package com.hwua.mall.controller;

import com.alibaba.fastjson.JSON;
import com.hwua.mall.entity.Address;
import com.hwua.mall.entity.Cart;
import com.hwua.mall.entity.Member;
import com.hwua.mall.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;

    /**
     * 添加购物车
     * @param map
     * @return
     */
    @RequestMapping(value = "/cart",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String cart(@RequestParam Map<String,Object> map){
        int i = cartService.insetCart(map);
        return JSON.toJSONString(i);
    }
    @RequestMapping("/cart/All")
    public String cartAll(HttpServletRequest req){
        HttpSession session = req.getSession();
        Member user = (Member)session.getAttribute("user");
        List<Map<String, Object>> maps = cartService.queryCart(user.getSid());
        req.setAttribute("cartData",maps);
        return "gouwuche";
    }
    @RequestMapping(value = "/cart/Num",produces ="application/json;charset=UTF-8" )
    @ResponseBody
    public String cartNum(HttpServletRequest request){
        int i=cartService.alterNum(Integer.parseInt(request.getParameter("id")),Integer.parseInt(request.getParameter("num")));
        return JSON.toJSONString(i);
    }
    @RequestMapping("/settle")

    public String settle(HttpServletRequest request){
        String array = request.getParameter("array");
        String price = request.getParameter("price");
        if(array==null||array.length()==0){
            return "redirect:cart/All";
        }
        array=array.substring(0,array.lastIndexOf(","));
        String[] split = array.split(",");
        List<Map<String, Object>> maps = cartService.queryArray(split);
        HttpSession session = request.getSession();
        Member user = (Member)session.getAttribute("user");
        int sid = user.getSid();
        List<Address> addresses = cartService.queryAddr(sid);
        if(addresses!=null && addresses.size()>0){
            request.setAttribute("address",addresses);
        }
        request.setAttribute("data",maps);
        request.setAttribute("price",price);
        System.out.println(maps);
        return "settle";
    }
    @RequestMapping(value = "/cart/total",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String total(String[] array){
        System.out.println("**********"+Arrays.toString(array)+"*************");
        int i=0;
        if (array!=null && array.length!=0){
            i = cartService.queryPrice(array);
        }
        return JSON.toJSONString(i);
    }

    @RequestMapping(value = "/addaddress")
    public String addaddr(Address address){
        int addaddr = cartService.addaddr(address);
        return "redirect:addressAll";
    }
    @RequestMapping(value = "/addressAll")
    public String address(HttpServletRequest request){
        HttpSession session = request.getSession();
        if(session.getAttribute("user")!=null){
            Member user = (Member)session.getAttribute("user");
            List<Address> addresses = cartService.queryAddr(user.getSid());
            request.setAttribute("addr",addresses);
        }
            return "addr";
    }
    @RequestMapping(value = "/delAddr",produces = "application/json;chatset=UTF-8")
    @ResponseBody
    public String delAddr(HttpServletRequest req){
        String aid = req.getParameter("id");
        int i = cartService.delAddr(Integer.parseInt(aid));
        return JSON.toJSONString(i);
    }
    @RequestMapping(value = "/setAddrMr",produces = "application/json;chatset=UTF-8")
    @ResponseBody
    public void setAddrMr(HttpServletRequest req){
        String aid = req.getParameter("id");
        HttpSession session = req.getSession();
        Member user =(Member) session.getAttribute("user");
        cartService.setAddrPt(user.getSid());
        cartService.setAddrMr(Integer.parseInt(aid));
    }
    //删除购物车
    @RequestMapping(value = "/cart/deleteCart",produces = "application/json;chatset=UTF-8")
    @ResponseBody
    public String deleteCart(HttpServletRequest req){
        String mcid = req.getParameter("mcid");
        String[] array={mcid};
        int i = cartService.deleteCart(array);
        return JSON.toJSONString(i);
    }
    @RequestMapping("/addAddr")
    public String addAddr(){

        return "addAddr";
    }
    @RequestMapping(value = "/addrOne",produces = "application/json;chatset=UTF-8")
    @ResponseBody
    public String addrOne(HttpServletRequest req){
        String id = req.getParameter("id");
        Address address = cartService.queryAddrByid(Integer.parseInt(id));
        return JSON.toJSONString(address);
    }
}

