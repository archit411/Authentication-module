package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.*;
import com.DB.DBConnnect;
import com.entities.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDAO dao = new UserDAO(DBConnnect.getConnection());
		User user = dao.getLogin(email, password);
		
		if(user!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("user.ob",user);
			response.sendRedirect("home.jsp");
		}
		else 
		{
			HttpSession session = request.getSession();
			session.setAttribute("error.msg","invalid email & password");
			response.sendRedirect("login.jsp");
		}
		
	}

}
