package org.smart4j.chapter2.controller;

import org.smart4j.chapter2.model.Customer;
import org.smart4j.chapter2.service.CustomerService;
import org.smart4j.chapter2.util.CastUtil;
import org.smart4j.chapter2.util.StringUtil;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 删除客户
 */
@WebServlet("/customer_delete")
public class CustomerDeleteServlet extends HttpServlet {


    CustomerService customerService;

    @Override
    public void init() throws ServletException {
        customerService =new CustomerService();
    }

    /**
     * 处理 删除客户 请求
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        if(StringUtil.isNotEmpty(id)) customerService.deleteCustomer(CastUtil.castLong(id));

        List<Customer> customerList = customerService.getCustomerList();

        req.setAttribute("customerList",customerList);

        req.getRequestDispatcher("/WEB-INF/view/customer/customer.jsp").forward(req,resp);
    }
}
