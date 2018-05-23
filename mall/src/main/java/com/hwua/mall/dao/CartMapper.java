package com.hwua.mall.dao;

import com.hwua.mall.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public interface CartMapper {
    //查询购物车数据
    public List<Map<String,Object>> queryCart(Integer id);
    //添加购物车
    public int insetCart(Map<String,Object> map);
    //修改购物车中商品的数量
    public int alterNum(@Param("id") Integer id,@Param("num") Integer num);
    //订单数据
    public List<Map<String,Object>> queryArray(String[] array);
    //查询数据计算总价格
    public List<Map<String,Object>> queryPrice(String[] array);
    //查询地址
    public List<Address> queryAddr(@Param("sid") Integer sid);
    //添加地址
    public int addaddr(Address address);
    //根据id查询地址
    public Address queryAddrByid(Integer id);
    //删除地址
    public int delAddr(Integer aid);
    //修改默认地址
    public void setAddrMr(Integer aid);
    //把用户所有地址改成普通地址
    public void setAddrPt(Integer sid);
    //查询插入订单的数据
    public List<Map<String ,Object>> queryData(String[] array);
    //删除购物车
    public int deleteCart(String[] array);
}
