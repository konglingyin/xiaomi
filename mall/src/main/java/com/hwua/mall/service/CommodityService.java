package com.hwua.mall.service;

import com.hwua.mall.entity.Colors;
import com.hwua.mall.entity.Product;
import com.hwua.mall.entity.Versions;

import java.util.List;

public interface CommodityService {
    //根据id查询商品
    Product queryId(Integer cid);
    //根据类型id查询商品
    List<Product> queryType(Integer ctype,Integer count);
    //分页查询
    List<Product> queryPage(Integer count);
    //查询商品的 版本（id）
    List<Versions> versions(Integer cid);
    //查询商品的颜色
    List<Colors> colors(Integer cid);
    //模糊查询
    List<Product> queryDim(String str);
    //类型名模糊字查询
    List<Product> queryDimC(String str);
}
