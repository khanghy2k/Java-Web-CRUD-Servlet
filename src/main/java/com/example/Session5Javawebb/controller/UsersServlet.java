package com.example.Session5Javawebb.controller;

import com.example.Session5Javawebb.model.User;
import com.example.Session5Javawebb.service.UserService;
import com.example.Session5Javawebb.service.impl.UserSeviceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsersServlet", value = "/UsersServlet")
public class UsersServlet extends HttpServlet {
    private UserService userService;
    public  UsersServlet(){
        userService = new UserSeviceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users =userService.findAll();

        request.setAttribute("data",users);
        request.getRequestDispatcher("WEB-INF/views/users.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
