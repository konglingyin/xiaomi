package com.hwua.mall.dao;

import java.util.Map;

public interface RegisterMapper {
    //根据用户名查询：查看是否已有该用户
    public int qureyUserName(String username);
    //注册:插入一条数据
    public int insertOne(Map<String,Object> map);
}
