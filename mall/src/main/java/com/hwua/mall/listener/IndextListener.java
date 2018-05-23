package com.hwua.mall.listener;

import com.hwua.mall.service.CategoryService;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class IndextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        /*
        * (1)Listener的生命周期是由servlet容器（例如tomcat）管理的，
        * 项目启动时上例中的ConfigListener是由servlet容器实例化并调用其contextInitialized方法，
        * 而servlet容器并不认得@Autowired注解，因此导致ConfigService实例注入失败。
        (2)而spring容器中的bean的生命周期是由spring容器管理的。

        以下是获取service
        */
        WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(servletContextEvent.getServletContext());
        //因为不能直接注入所以用这种方式获取
        CategoryService categoryService = wac.getBean(CategoryService.class);
        System.out.println("categoryService = " + categoryService);
        //获取application （servletContext就是application）
        ServletContext servletContext = servletContextEvent.getServletContext();
        //向application作用域中添加数据
        servletContext.setAttribute("cbs",categoryService.queryCategory());
        servletContext.setAttribute("cbs2",categoryService.queryCategoryTwo());
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
