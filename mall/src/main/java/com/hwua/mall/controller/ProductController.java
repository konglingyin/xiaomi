package com.hwua.mall.controller;

import com.hwua.mall.entity.Colors;
import com.hwua.mall.entity.Product;
import com.hwua.mall.entity.Versions;
import com.hwua.mall.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private CommodityService commodityService;

    /**
     *商品页
     * @param request
     * @return
     */
    @RequestMapping("/product")
    public String product(HttpServletRequest request){
        String count = request.getParameter("count");
        if (count == null || "".equals(count)){
            count="0";
        }
        String cid = request.getParameter("cid");
        String ctype = request.getParameter("ctype");
        if (ctype!=null&&!"".equals(ctype)){
            List<Product> products = commodityService.queryType(Integer.parseInt(ctype), Integer.parseInt(count));
            request.setAttribute("products",products);
        }else if(cid!=null && !"".equals(cid) ){
            Product product = commodityService.queryId(Integer.parseInt(cid));
            request.setAttribute("products",product);
        }else {
            List<Product> products = commodityService.queryPage(0);
            request.setAttribute("products",products);
        }
        return "liebiao";
    }
    @RequestMapping("/liebiao")
    public String liebiao(){
        return "liebiao";
    }
    @RequestMapping("/productDim")
    public String productDim(HttpServletRequest req){
        String str = req.getParameter("str");
        List<Product> products = commodityService.queryDimC(str);
        System.out.println("----------------------------products="+products+"---------------------------------------");
        if (products!=null && products.size()>0){
            req.setAttribute("products",products);
        }else {
            List<Product> products1 = commodityService.queryDim(str);
            System.out.println("----------------------------products1="+products1+"---------------------------------------");
            req.setAttribute("products",products1);
        }
        return "liebiao";
    }
    /**
     * 详情页显示的内容
     * @param req
     * @return
     */
    @RequestMapping("/details")
    public String details(HttpServletRequest req){
        String cid = req.getParameter("cid");
        Product product = commodityService.queryId(Integer.parseInt(cid));
        List<Colors> colors = commodityService.colors(Integer.parseInt(cid));
        List<Versions> versions = commodityService.versions(Integer.parseInt(cid));
        req.setAttribute("product",product);
        req.setAttribute("colors",colors);
        req.setAttribute("versions",versions);
        return "xiangqing";
    }
}
