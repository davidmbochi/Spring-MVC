package com.packt.webstore.validator;

import com.packt.webstore.domain.Product;
import com.packt.webstore.exception.ProductNotFoundException;
import com.packt.webstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
@Component
public class productIdValidator implements ConstraintValidator<ProductId,String> {
    @Autowired
    private ProductService productService;

    public void initialize(ProductId costraintAnnotation){

    }
    public boolean isValid(String value, ConstraintValidatorContext context){
        Product product;
        try {
            product=productService.getProductById(value);
        }catch (ProductNotFoundException e){
            return true;
        }
        if(product != null){
            return false;
        }
        return true;
    }
}
