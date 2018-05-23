package com.hwua.mall.entity;

public class Product {
    //商品id
    private Integer cid;
    //商品名
    private String cname;
    //描述
    private String describes;
    //价格
    private Integer price;
    //库存
    private String inventory;
    //图片
    private String img;
    //类型
    private Integer ctype;
    //销量计数
    private Integer counts;
    //状态（是否下架）
    private Integer status;

    @Override
    public String toString() {
        return "Product{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", describes='" + describes + '\'' +
                ", price=" + price +
                ", inventory='" + inventory + '\'' +
                ", img='" + img + '\'' +
                ", ctype=" + ctype +
                ", counts=" + counts +
                ", status=" + status +
                '}';
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

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getCtype() {
        return ctype;
    }

    public void setCtype(Integer ctype) {
        this.ctype = ctype;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Product() {

    }
}
