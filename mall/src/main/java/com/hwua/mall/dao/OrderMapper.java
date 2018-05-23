package com.hwua.mall.dao;

import com.hwua.mall.entity.Order;
import com.hwua.mall.entity.OrderCommodity;
import com.hwua.mall.entity.OrderData;

import java.util.List;
import java.util.Map;

public interface OrderMapper {
    //插入一条购物车
    public int insertOrder(Order order);
    //向订单详情表中插入数据（一条或多条）
    public int insertDetails(Map<String,Object> map);
    //查询订单页面的数据
    public List<OrderData> queryOdByMid(Integer mids);
    //查询订单页的商品 查询OrderCommodity的list
    public List<OrderCommodity> queryOcByOid(Integer id);
}
