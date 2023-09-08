package com.example.Session5Javawebb.controller;

import com.example.Session5Javawebb.model.User;
import com.example.Session5Javawebb.service.UserService;
import com.example.Session5Javawebb.service.impl.UserSeviceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserRemoveServlet",value = "/remove-user")
public class UserRemoveServlet extends HttpServlet {
    private UserService userService;
    public UserRemoveServlet(){
        userService = new UserSeviceImpl();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = userService.findId(id);
        if (user != null) {
            userService.remove(id);
            response.sendRedirect("/UsersServlet");
        } else {
            response.getWriter();
        }
        request.getRequestDispatcher("WEB-INF/views/remove-user.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {


    }
}
