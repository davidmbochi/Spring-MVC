package com.packt.webstore.dto;

import java.io.Serializable;

public class CartItemDto implements Serializable {
    private static final long serialVersionUID= -3551573319376880896L;
    private String id;
    private String productId;
    private int quanity;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }
}
