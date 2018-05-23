package com.hwua.mall.service.impl;

import com.hwua.mall.dao.OrderMapper;
import com.hwua.mall.entity.Order;
import com.hwua.mall.entity.OrderCommodity;
import com.hwua.mall.entity.OrderData;
import com.hwua.mall.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderMapper orderMapper;
    @Override
    public int insertOrder(Order order) {

        return  orderMapper.insertOrder(order);
    }

    @Override
    public int insertDetails(Map<String, Object> map) {
        return orderMapper.insertDetails(map);
    }

    @Override
    public List<OrderData> queryOdByMid(Integer mid) {
        return orderMapper.queryOdByMid(mid);
    }

    @Override
    public List<OrderCommodity> queryOcByOid(Integer id) {
        return orderMapper.queryOcByOid(id);
    }
}
