package com.hwua.mall.controller;

import com.hwua.mall.entity.Member;
import com.hwua.mall.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/two")
    public String loginTwo(HttpServletRequest request){

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Member member = loginService.login(username, password);
        if(member !=null){
            System.out.println("*********************"+member.getUsername());
            HttpSession session = request.getSession();
            session.setAttribute("user",member);
            return "redirect:/index";
        }
        return "redirect:/index";
    }
    @RequestMapping("/delSessionUse")
    public String delSessionUse(HttpSession session){
        session.removeAttribute("user");
        return "redirect:index";
    }


}
