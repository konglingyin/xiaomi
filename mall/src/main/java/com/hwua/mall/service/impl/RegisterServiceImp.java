package com.hwua.mall.service.impl;

import com.hwua.mall.dao.RegisterMapper;
import com.hwua.mall.service.RegisterSerice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("registerService")
public class RegisterServiceImp implements RegisterSerice{
    @Autowired
    private RegisterMapper registerMapper;
    @Override
    public int qureyUserName(String username) {
        return registerMapper.qureyUserName(username);
    }

    @Override
    public int insertOne(Map<String, Object> map) {
        return registerMapper.insertOne(map);
    }
}
