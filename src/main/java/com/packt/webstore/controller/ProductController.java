package com.packt.webstore.controller;

import com.packt.webstore.domain.Product;
import com.packt.webstore.exception.NoProductsFoundUnderCategoryException;
import com.packt.webstore.exception.ProductNotFoundException;
import com.packt.webstore.service.ProductService;
import com.packt.webstore.validator.ProductValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/market")
public class ProductController {
    @Autowired
    private ProductValidator productValidator;

    @Autowired
    private ProductService productService;


    @RequestMapping("/products")
    public String list(Model model){
        model.addAttribute("products",productService.getAllProducts());
        return "products";

    }

    @RequestMapping("/update/stock")
    public String updateStock(Model model){
        productService.updateAllStock();
        return "redirect:/market/products";
    }
    @RequestMapping("/products/{category}")
    public String getProductsByCategory(Model model, @PathVariable("category") String productCategory){
        List<Product> products =productService.getProductsByCategory(productCategory);
        if(products == null || products.isEmpty()){
            throw new NoProductsFoundUnderCategoryException();
        }
        model.addAttribute("products",products);
        return "products";
    }
    @RequestMapping("/products/filter/{params}")
    public String getProductsByFilter(@MatrixVariable(pathVar = "params")
                                           Map<String, List<String>> filterParams,Model model){
        model.addAttribute("products",productService.getProductsByFilter(filterParams));
        return "products";

    }
    @RequestMapping("/product")
    public String getProductById(@RequestParam("id") String productId,Model model){
        model.addAttribute("product",productService.getProductById(productId));
        return "product";
    }
    @RequestMapping(value = "/products/add",method = RequestMethod.GET)
    public String getAddNewProductForm(Model model){
        Product newProduct= new Product();
        model.addAttribute("newProduct",newProduct);
        return "addProduct";
    }
    @RequestMapping(value = "/products/add",method = RequestMethod.POST)
    public String processAddNewProductForm(@ModelAttribute("newProduct")@Valid Product newProduct,
                                           BindingResult result,HttpServletRequest request){
        if(result.hasErrors()){
            return "addProduct";
        }
        String[] suppressedFields =result.getSuppressedFields();
        if(suppressedFields.length>0){
            throw  new RuntimeException("attempting to bind disallowed fields: "+
                    StringUtils.arrayToCommaDelimitedString(suppressedFields));
        }
        MultipartFile productImage = newProduct.getProductImage();
        String rootDirectory =
                request.getSession().getServletContext().getRealPath("/");
        if(productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(rootDirectory+"/resources/images/"+
                        newProduct.getProductId()+".png"));
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        MultipartFile productManual=newProduct.getProductManual();
        String rootFolder=request.getSession().getServletContext().getRealPath("/");
        if(productManual != null && !productManual.isEmpty()){
            try {
                productManual.transferTo(new File(rootFolder+"/resources/pdf/"+
                        newProduct.getProductId()+".pdf"));
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        productService.addProduct(newProduct);
        return "redirect:/market/products";
    }
    @InitBinder
    public void initialiseBinder(WebDataBinder binder){
        binder.setAllowedFields("productId",
                "name",
                "unitPrice",
                "description",
                "manufacturer",
                "category",
                "unitsInStock",
                "condition",
                "productImage",
                "productManual",
                "language");
        binder.setValidator(productValidator);
    }
    @ExceptionHandler(ProductNotFoundException.class)
    public ModelAndView handlerError(HttpServletRequest request, ProductNotFoundException exception){
        ModelAndView model= new ModelAndView();
        model.addObject("invalidProductId",exception.getProductId());
        model.addObject("exception",exception);
        model.addObject("url",request.getQueryString());
        model.setViewName("productNotFound");
        return model;
    }
    @RequestMapping("/products/invalidPromoCode")
    public String invalidPromoCode(){
        return "invalidPromoCode";
    }
}
