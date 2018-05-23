package com.hwua.mall.controller;

import com.hwua.mall.entity.Address;
import com.hwua.mall.entity.Member;
import com.hwua.mall.entity.Order;
import com.hwua.mall.entity.OrderData;
import com.hwua.mall.service.CartService;
import com.hwua.mall.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SettleCotroller {
    @Autowired
    private OrderService orderService;
    @Autowired
    private CartService cartService;
    @RequestMapping("/order")
    public String  order(HttpServletRequest req){
        HttpSession session = req.getSession();
        Member user = (Member)session.getAttribute("user");
        int sid = user.getSid();
        List<OrderData> orderData = orderService.queryOdByMid(sid);
        System.out.println("--------------------------orderData="+orderData+"---------------------------");
        req.setAttribute("orderData",orderData);
        return "dingdanzhongxin";
    }
    @RequestMapping("/insertOrder")
    public String insertOrder(HttpServletRequest req){

        HttpSession session = req.getSession();

        if(session.getAttribute("user")==null){
            return "redirect:login";
        }
        String aid =(String) req.getParameter("aid");
        System.out.println("-------------------aid="+aid+"-------------------");
        Order order=new Order();
        Address address = cartService.queryAddrByid(Integer.parseInt(aid));
        order.setAddr(address.getAddr());
        order.setName(address.getName());
        Member user =(Member)session.getAttribute("user");
        order.setMid(user.getSid());
        order.setTel(address.getTel());
        int i = orderService.insertOrder(order);
        Map<String,Object> maps=new HashMap<String, Object>();


        String[] array = req.getParameterValues("mcid");

        List<Map<String, Object>> maps1 = cartService.queryData(array);
        maps.put("orid",order.getOid());
        maps.put("maps",maps1);
        System.out.println("-----------------array="+ Arrays.toString(array)+"-------------------------");
        int i1 = orderService.insertDetails(maps);
        int i2 = cartService.deleteCart(array);
        System.out.println("---------------删除购物车的数量为"+i2+"------------------");
        return "redirect:order";
    }

}
