package com.hwua.mall.controller;

import com.alibaba.fastjson.JSON;
import com.hwua.mall.service.RegisterSerice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class RegisterController {
    @Autowired
    private RegisterSerice registerSerice;

    /**
     * ajax 判断用户名是否存在和合法
     * @param username
     * @return
     */
    @RequestMapping(value = "/register/ajaxU",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String ajaxUsername(String username){
        Map<String,Object> map=new HashMap<String,Object>();
        if ("".equals(username)){
            map.put("number",2);
        }else if (username.length()<4){
            map.put("number",3);
            return JSON.toJSONString(map);
        }else{
            int i = registerSerice.qureyUserName(username);
            map.put("number", i);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 用户注册
     * @param req
     * @return
     */
    @RequestMapping(value = "/register/user",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String ajaxUser(HttpServletRequest req){
        String username = req.getParameter("username");
        String p1 = req.getParameter("password");
        String p2 = req.getParameter("repassword");
        String tel = req.getParameter("tel");
        int a=0;
        if(!"".equals(username)&&username.length()>=4 && !"".equals(p1)&& p1.equals(p2) && tel.length()>4&&tel.length()<=11){
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("username",username);
            map.put("password",p1);
            map.put("phone",tel);
            a = registerSerice.insertOne(map);
            System.out.println("++++++++++++++++++++a="+a+"+++++++++++++++++++++++");
        }
        return JSON.toJSONString(a);
    }
}
