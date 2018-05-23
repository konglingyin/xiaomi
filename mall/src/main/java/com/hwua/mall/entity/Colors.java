package com.hwua.mall.entity;

public class Colors {
    //id
    private Integer csid;
    //颜色的id
    private Integer cid;
    //商品的id
    private Integer prid;
    //钱
    private Integer money;
    //图片
    private String img;
    //颜色名字
    private String coname;

    @Override
    public String toString() {
        return "Colors{" +
                "csid=" + csid +
                ", cid=" + cid +
                ", prid=" + prid +
                ", money=" + money +
                ", img='" + img + '\'' +
                ", coname='" + coname + '\'' +
                '}';
    }

    public String getConame() {
        return coname;
    }

    public void setConame(String coname) {
        this.coname = coname;
    }

    public Colors() {
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getPrid() {
        return prid;
    }

    public void setPrid(Integer prid) {
        this.prid = prid;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
