package com.hwua.mall.entity;

import java.sql.Timestamp;
import java.util.List;

public class OrderData {
    //id
    private Integer id;
    //商品
    private List<OrderCommodity> commondity;
    //收货人名字
    private String name;
    //收货人电话
    private String tel;
    //收货人地址
    private String addr;
    //时间
    private Timestamp times;
    //总钱数
    private Integer prices;

    @Override
    public String toString() {
        return "OrderData{" +
                "id=" + id +
                ", commondity=" + commondity +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", addr='" + addr + '\'' +
                ", times=" + times +
                ", prices=" + prices +
                '}';
    }

    public Integer getPrices() {
        return prices;
    }

    public void setPrices(Integer prices) {
        this.prices = prices;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<OrderCommodity> getCommondity() {
        return commondity;
    }

    public void setCommondity(List<OrderCommodity> commondity) {
        this.commondity = commondity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Timestamp getTimes() {
        return times;
    }

    public void setTimes(Timestamp times) {
        this.times = times;
    }

    public OrderData() {
    
    }
}
