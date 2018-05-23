package com.hwua.mall.entity;

public class OrderCommodity {
    //id
    private Integer adid;
    //商品的id
    private Integer cid;
    //商品名字
    private String cname;
    //版本的名字 
    private String vname;
    //颜色名字
    private String coname;
    //数量
    private Integer num;
    //价格
    private Integer moneys;

    @Override
    public String toString() {
        return "OrderCommodity{" +
                "ocid=" + adid +
                ", cid=" + cid +
                ", cname='" + cname + '\'' +
                ", vname='" + vname + '\'' +
                ", coname='" + coname + '\'' +
                ", num=" + num +
                ", moneys=" + moneys +
                '}';
    }

    public Integer getAdid() {
        return adid;
    }

    public void setAdid(Integer adid) {
        this.adid = adid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getConame() {
        return coname;
    }

    public void setConame(String coname) {
        this.coname = coname;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getMoneys() {
        return moneys;
    }

    public void setMoneys(Integer moneys) {
        this.moneys = moneys;
    }

    public OrderCommodity() {
    
    }
}
