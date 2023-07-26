//this servlet class is called when the submit button is clicked
package com.servlet;

import com.entities.*;
import com.DAO.*;
import com.DB.DBConnnect;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.User;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String name=request.getParameter("uname");//getParameter function is used to take the value 
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User us = new User();
		us.setName(name);//setName function is used to set the value of the name
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnnect.getConnection());
		boolean f = dao.userRegister(us);
		
		if(true)
		{
			HttpSession session = request.getSession();//HttpSession is used to make the session when user register successfully  
			session.setAttribute("reg.msg", "Registration Successfull..");//setAttribute is used to set the attribute of reg.msg
			response.sendRedirect("register.jsp");//if register successfully then in response redirect user to the register package
		}
		else 
		{
			HttpSession session = request.getSession();  
			session.setAttribute("error.msg", "Something went wrong");
			response.sendRedirect("register.jsp");
		}
		
	}

}
