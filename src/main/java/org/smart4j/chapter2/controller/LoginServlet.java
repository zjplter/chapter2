package org.smart4j.chapter2.controller;

import org.smart4j.chapter2.model.Customer;
import org.smart4j.chapter2.model.User;
import org.smart4j.chapter2.service.CustomerService;
import org.smart4j.chapter2.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by zhouj on 17/3/27.
 */
@WebServlet("/login/user")
public class LoginServlet extends HttpServlet {

    LoginService loginService;
    CustomerService customerService;

    @Override
    public void init() throws ServletException {
        loginService = new LoginService();
        customerService = new CustomerService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.work(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.work(req, resp);
    }

    /**
     * work 调用公共方法
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void work(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String method = req.getMethod();

        System.out.println("login use mothod is " + method);

        if (method.equals("GET"))
            req.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(req, resp);
        if (method.equals("POST"))
            this.login(req, resp);
    }

    /**
     * 登陆方法
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User userForLogin = loginService.getUserForLogin(username, password);

        if (userForLogin != null) {
            List<Customer> customerList = customerService.getCustomerList();

            req.setAttribute("customerList",customerList);

            req.getRequestDispatcher("/WEB-INF/view/customer/customer.jsp").forward(req, resp);
        } else
            req.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(req, resp);

    }

}
