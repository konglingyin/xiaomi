package com.hwua.mall.service;

import java.util.Map;

public interface RegisterSerice {
    //用户名查询
    public int qureyUserName(String username);
    //注册用户
    public int insertOne(Map<String,Object> map);
}
