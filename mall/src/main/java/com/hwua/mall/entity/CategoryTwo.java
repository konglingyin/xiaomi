package com.hwua.mall.entity;

import java.util.List;

public class CategoryTwo {
    private Integer twoid;
    private List<Product> products;

    @Override
    public String toString() {
        return "CategoryTwo{" +
                "twoid=" + twoid +
                ", products=" + products +
                '}';
    }

    public Integer getTwoid() {
        return twoid;
    }

    public void setTwoid(Integer twoid) {
        this.twoid = twoid;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public CategoryTwo() {

    }
}
