package com.hwua.mall.controller;

import com.hwua.mall.entity.CategoryTwo;
import com.hwua.mall.entity.Product;
import com.hwua.mall.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;
    @RequestMapping("/index")
    public String indext(HttpServletRequest req){
        HttpSession session = req.getSession();
        if (session.getAttribute("twoP")==null){
            List<CategoryTwo> categoryTwos = indexService.queryDataTwo();
            System.out.println("**************categoryTwos="+categoryTwos+"***************");
            session.setAttribute("twoP",categoryTwos);
        }
        List<Product> products = indexService.queryFrontByCounts();
        req.setAttribute("front",products);

        return "index";
    }
}