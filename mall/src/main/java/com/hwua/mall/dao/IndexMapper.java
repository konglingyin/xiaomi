package com.hwua.mall.dao;

import com.hwua.mall.entity.Category;
import com.hwua.mall.entity.CategoryTwo;
import com.hwua.mall.entity.Product;


import java.util.List;
import java.util.Map;

public interface IndexMapper {
    //一级分类
    public List<Category> queryCategory();
    //二级分类的数据
    public List<CategoryTwo> queryDataTwo();
    //查询二级分类的商品
    public List<Product> queryProductList(Integer twoid);
    //销量前五的商品
    public List<Product> queryFrontByCounts();

}
