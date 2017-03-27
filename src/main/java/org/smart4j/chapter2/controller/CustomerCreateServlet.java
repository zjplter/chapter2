package org.smart4j.chapter2.controller;

import org.smart4j.chapter2.model.Customer;
import org.smart4j.chapter2.service.CustomerService;
import org.smart4j.chapter2.util.CastUtil;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 创建客户
 */
@WebServlet("/customer_create")
public class CustomerCreateServlet extends HttpServlet {


    CustomerService customerService;

    @Override
    public void init() throws ServletException {
        customerService =new CustomerService();
    }

    /**
     * 进入 创建客户 界面
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/view/customer/customer_create.jsp").forward(req,resp);
    }

    /**
     * 处理 创建客户 请求
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Map<String,Object> map=new HashMap<String,Object>();

        req.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String contact = req.getParameter("contact");
        String telephone = req.getParameter("telephone");
        String email = req.getParameter("email");
        String id = req.getParameter("id");

        map.put("name",name);
        map.put("contact",contact);
        map.put("telephone",telephone);
        map.put("email",email);

        customerService.createCustomer(map);

        List<Customer> customerList = customerService.getCustomerList();

        req.setAttribute("customerList",customerList);

        req.getRequestDispatcher("/WEB-INF/view/customer/customer.jsp").forward(req,resp);
    }
}
