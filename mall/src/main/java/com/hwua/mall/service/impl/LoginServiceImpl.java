package com.hwua.mall.service.impl;

import com.hwua.mall.dao.LoginMapper;
import com.hwua.mall.entity.Member;
import com.hwua.mall.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
    @Autowired
    private LoginMapper loginMapper;
    @Override
    public Member login(String username, String password) {
        return loginMapper.login(username,password);
    }
}
