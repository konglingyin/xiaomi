package com.hwua.mall.entity;

public class Category {
    private int tid;
    private String tname;
    private int twoid;

    public Category() {
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public int getTwoid() {
        return twoid;
    }

    public void setTwoid(int twoid) {
        this.twoid = twoid;
    }

    @Override
    public String toString() {
        return "Category{" +
                "tid=" + tid +
                ", tname='" + tname + '\'' +
                ", twoid=" + twoid +
                '}';
    }
}
