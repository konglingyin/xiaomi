package com.hwua.mall.service.impl;

import com.hwua.mall.dao.CategoryMapper;
import com.hwua.mall.entity.Category;
import com.hwua.mall.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("categoryService")
public class CategoryServiceImp implements CategoryService{

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> queryCategory() {
        return categoryMapper.queryCategory();
    }
    public List<Category> queryCategoryTwo(){
        return categoryMapper.queryCategoryTwo();
    }
}
