package com.example.Session5Javawebb.controller;

import com.example.Session5Javawebb.model.User;
import com.example.Session5Javawebb.service.UserService;
import com.example.Session5Javawebb.service.impl.UserSeviceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "UserCreateServlet", value = "/create-user")

public class UserCreateServlet extends HttpServlet {
    private UserService userService;
    public UserCreateServlet(){
        userService = new UserSeviceImpl();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/create-user.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
       String id = request.getParameter("id");
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       int role = Integer.parseInt(request.getParameter("role"));
       boolean status = Boolean.parseBoolean(request.getParameter("status"));
       double balance = Double.parseDouble(request.getParameter("balance"));
        SimpleDateFormat frm= new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = frm.parse(request.getParameter("birthday"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String address = request.getParameter("address");
        System.out.println(id);
        System.out.println(password);
        System.out.println(role);
        System.out.println(status);
        System.out.println(balance);
        System.out.println(date);
        System.out.println(address);
        userService.add(new User(id,username,password,status,role,balance,date,address));
        response.sendRedirect("/UsersServlet");


    }

}
