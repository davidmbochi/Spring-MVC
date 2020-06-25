package com.packt.webstore.validator;

import com.packt.webstore.config.WebApplicationContextConfig;
import com.packt.webstore.domain.Product;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.validation.BindException;
import org.springframework.validation.ValidationUtils;

import java.math.BigDecimal;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = WebApplicationContextConfig.class)
@WebAppConfiguration
public class ProductValidatorTest {
    @Autowired
    private ProductValidator productValidator;

    @Test
    public void product_without_unitPrice_should_be_invalid() {
        try {
            Product product=new Product();
            BindException bindException=new BindException(product,"product");
            ValidationUtils.invokeValidator(productValidator,product,bindException);
            Assert.assertEquals(1,bindException.getErrorCount());
            Assert.assertTrue(bindException.getLocalizedMessage().contains("Unit price is Invalid.It cannot be empty."));

        }catch (Exception e){
            System.out.println(e.getCause());
        }
    }
    @Test
    public void product_with_existing_productId_invalid(){
        Product product=new Product("P1234","iphone 5s",new BigDecimal(500));
        product.setCategory("Tablet");
        BindException bindException=new BindException(product,"product");
        ValidationUtils.invokeValidator(productValidator,product,bindException);
        Assert.assertEquals(1,bindException.getErrorCount());
        Assert.assertTrue(bindException.getLocalizedMessage().contains("A product already exists with this product id"));
    }
    @Test
    public void a_valid_product_should_not_get_any_error_during_validation(){
        Product product=new Product("P9876","iphone 5s",new BigDecimal(500));
        product.setCategory("Tablet");
        BindException bindException=new BindException(product,"product");
        ValidationUtils.invokeValidator(productValidator,product,bindException);
        Assert.assertEquals(0,bindException.getErrorCount());
    }

}
