package com.hwua.mall.dao;

import com.hwua.mall.entity.Member;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface LoginMapper {
    //当传多个参数时 用@param("参数名") 的注解确立参数 mapper.xml中用#{参数名}
    //不用注解也可以在Mapper.xml中 用#{0} ， #{1}的方式确立参数
    public Member login(@Param("username") String username , @Param("password") String password);
}
