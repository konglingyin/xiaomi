package com.hwua.mall.service;

import com.hwua.mall.entity.Order;
import com.hwua.mall.entity.OrderCommodity;
import com.hwua.mall.entity.OrderData;

import java.util.List;
import java.util.Map;

public interface OrderService {
    //插入一条订单
    public int insertOrder(Order order);
    //插入一条订单详情
    public int insertDetails(Map<String,Object> map);
    //查询订单页面的数据
    public List<OrderData> queryOdByMid(Integer mid);
    //查询订单页的商品 查询OrderCommodity的list
    public List<OrderCommodity> queryOcByOid(Integer id);

}
