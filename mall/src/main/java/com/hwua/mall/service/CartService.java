package com.hwua.mall.service;


import com.hwua.mall.entity.Address;
import java.util.List;
import java.util.Map;

public interface CartService {
    //查询购物车页面的数据
    public List<Map<String,Object>> queryCart(Integer id);
    //添加购物车
    public int insetCart(Map<String,Object> map);
    //修改数量
    public int alterNum(Integer id,Integer num);
    //查询多个购物车的数据
    public List<Map<String,Object>> queryArray(String[] array);
    //提供数据 计算总价格
    public int queryPrice(String[] array);
    //dizhi
    public List<Address> queryAddr( Integer sid);
    //添加地址
    public int addaddr(Address address);
    public Address queryAddrByid(Integer id);
    //查询插入订单的数据
    public List<Map<String ,Object>> queryData(String[] split);
    public int deleteCart(String[] array);
    //删除地址
    public int delAddr(Integer aid);
    //修改默认地址
    public void setAddrMr(Integer aid);
    //把用户所有地址改成普通地址
    public void setAddrPt(Integer sid);
}
