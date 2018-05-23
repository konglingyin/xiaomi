package com.hwua.mall.service.impl;


import com.hwua.mall.dao.CartMapper;
import com.hwua.mall.entity.Address;
import com.hwua.mall.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service("cartService")
public class CartServiceImpl implements CartService{

    @Autowired
    private CartMapper cartMapper;

    @Override
    public List<Map<String, Object>> queryCart(Integer id) {
        return cartMapper.queryCart(id);
    }

    @Override
    public int insetCart(Map<String, Object> map) {
        return cartMapper.insetCart(map);
    }

    @Override
    public int alterNum(Integer id, Integer num) {
        return cartMapper.alterNum(id,num);
    }

    @Override
    public List<Map<String, Object>> queryArray(String[] array) {
        return cartMapper.queryArray(array);
    }
    public int queryPrice(String[] array){
        List<Map<String, Object>> maps = cartMapper.queryPrice(array);
        int sum=0;
        for (Map<String,Object> map:maps) {
            Integer money = (Integer)map.get("money");
            Integer prid = (Integer)map.get("vprice");
            Integer num = (Integer)map.get("num");
            sum+=(money+prid)*num;
        }
        return sum;
    }

    @Override
    public List<Address> queryAddr(Integer sid) {
        return cartMapper.queryAddr(sid);
    }

    @Override
    public int addaddr(Address address) {
        return cartMapper.addaddr(address);
    }

    @Override
    public Address queryAddrByid(Integer id) {
        Address address = cartMapper.queryAddrByid(id);
        return address;
    }

    @Override
    public List<Map<String, Object>> queryData(String[] split) {
        return cartMapper.queryData(split);
    }

    @Override
    public int deleteCart(String[] array) {
        return cartMapper.deleteCart(array);
    }

    @Override
    public int delAddr(Integer aid) {
        return cartMapper.delAddr(aid);
    }

    @Override
    public void setAddrMr(Integer aid) {
        cartMapper.setAddrMr(aid);
    }

    @Override
    public void setAddrPt(Integer sid) {
        cartMapper.setAddrPt(sid);
    }


}
