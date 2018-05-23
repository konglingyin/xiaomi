package com.hwua.mall.service.impl;

import com.hwua.mall.dao.CommodityMapper;
import com.hwua.mall.entity.Colors;
import com.hwua.mall.entity.Product;
import com.hwua.mall.entity.Versions;
import com.hwua.mall.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commodityService")
public class CommodityServiceImpl implements CommodityService{
    @Autowired
    private CommodityMapper commodityMapper;

    @Override
    public Product queryId(Integer cid) {
        return commodityMapper.queryId(cid);
    }

    @Override
    public List<Product> queryType(Integer ctype,Integer count) {
        return commodityMapper.queryType(ctype,count);
    }

    @Override
    public List<Product> queryPage(Integer count) {
        return commodityMapper.queryPage(count);
    }

    @Override
    public List<Versions> versions(Integer cid) {
        return commodityMapper.versions(cid);
    }

    @Override
    public List<Colors> colors(Integer cid) {
        return commodityMapper.colors(cid);
    }

    @Override
    public List<Product> queryDim(String str) {
        return commodityMapper.queryDim(str);
    }

    @Override
    public List<Product> queryDimC(String str) {
        return commodityMapper.queryDimC(str);
    }
}
