package com.hwua.mall.entity;

public class Cart {
    private Integer id;
    private Integer mid;
    private Integer prid;
    private Integer coid;
    private Integer veid;
    private Integer num;
    private Integer type;

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", mid=" + mid +
                ", prid=" + prid +
                ", coid=" + coid +
                ", veid=" + veid +
                ", num=" + num +
                ", type=" + type +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getPrid() {
        return prid;
    }

    public void setPrid(Integer prid) {
        this.prid = prid;
    }

    public Integer getCoid() {
        return coid;
    }

    public void setCoid(Integer coid) {
        this.coid = coid;
    }

    public Integer getVeid() {
        return veid;
    }

    public void setVeid(Integer veid) {
        this.veid = veid;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Cart() {

    }
}
