package com.hwua.mall.service.impl;

import com.hwua.mall.dao.IndexMapper;
import com.hwua.mall.entity.Category;
import com.hwua.mall.entity.CategoryTwo;
import com.hwua.mall.entity.Product;
import com.hwua.mall.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("indexService")
public class IndexServiceImpl implements IndexService{
    @Autowired
    private IndexMapper indexMapper;
    @Override
    public List<Category> queryCategory() {
        return indexMapper.queryCategory();
    }

    @Override
    public List<CategoryTwo> queryDataTwo() {
        return indexMapper.queryDataTwo();
    }

    @Override
    public List<Product> queryProductList(Integer twoid) {
        return indexMapper.queryProductList(twoid);
    }

    @Override
    public List<Product> queryFrontByCounts() {
        return indexMapper.queryFrontByCounts();
    }
}
