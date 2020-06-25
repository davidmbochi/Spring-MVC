package com.packt.webstore.domain;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.math.BigDecimal;

public class CartItemTest {
    private CartItem cartItem;
    @Before
    public void setUp(){
        cartItem=new CartItem("1");
    }
    @Test
    public void cartItem_total_price_should_be_equal_to_product_unit_price_in_case_of_single_quantity(){
        Product iphone=new Product("P1234","iphone 5s",new BigDecimal(500));
        cartItem.setProduct(iphone);
        BigDecimal totalPrice=cartItem.getTotalPrice();

        Assert.assertEquals(iphone.getUnitPrice(),totalPrice);
    }
}
