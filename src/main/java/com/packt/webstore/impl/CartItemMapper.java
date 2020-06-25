package com.packt.webstore.impl;

import com.packt.webstore.Domain.CartItem;
import com.packt.webstore.service.ProductService;
import org.springframework.jdbc.core.RowMapper;


import java.sql.ResultSet;
import java.sql.SQLException;

public class CartItemMapper implements RowMapper<CartItem> {
    private ProductService productService;

    public CartItemMapper(ProductService productService){
        this.productService=productService;
    }

    @Override
    public CartItem mapRow(ResultSet rs,int rowNum) throws SQLException {
    CartItem cartItem=new CartItem(rs.getString("ID"));
    cartItem.setProduct(productService.getProductById(rs.getString("PRODUCT_ID")));
    cartItem.setQuantity(rs.getInt("QUANTITY"));
    return cartItem;
    }

}
