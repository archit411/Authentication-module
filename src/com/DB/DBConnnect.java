//this class is used to make a connection with database 
package com.DB;
import java.sql.*;


public class DBConnnect 
{
	private static Connection conn;//conn is the connection variable
	public static Connection getConnection()//getConnection method is used to make the connection
	{
		try 
		{
			if(conn==null)//conn==null it means it checks that it is already connected with the database
			{
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2","root","archit411");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
