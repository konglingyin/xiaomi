package com.hwua.mall.entity;

public class Versions {
    private Integer vid;
    private Integer prid;
    private String vname;
    private Integer vprice;

    @Override
    public String toString() {
        return "Versions{" +
                "vid=" + vid +
                ", prid=" + prid +
                ", vname='" + vname + '\'' +
                ", vprice=" + vprice +
                '}';
    }

    public Integer getVid() {
        return vid;
    }

    public void setVid(Integer vid) {
        this.vid = vid;
    }

    public Integer getPrid() {
        return prid;
    }

    public void setPrid(Integer prid) {
        this.prid = prid;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public Integer getVprice() {
        return vprice;
    }

    public void setVprice(Integer vprice) {
        this.vprice = vprice;
    }

    public Versions() {

    }
}
