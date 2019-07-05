package com.training.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;

import javax.servlet.*;
import javax.servlet.http.*;
import com.training.SqlConnection;
import com.training.daos.DaoImpl;
import com.training.iface.Command;

/**
 * Servlet implementation class TravelController
 */
public class TravelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	DaoImpl dao = null;
	Properties properties = null;
	
    public TravelController() {
        super();
        Connection con = SqlConnection.getSqlConnection();
        dao = new DaoImpl(con);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    @Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		InputStream inputStream = null;
		ClassLoader classLoader=Thread.currentThread().getContextClassLoader();
		inputStream = classLoader.getResourceAsStream("Command.properties");
		properties = new Properties();
		try {
			properties.load(inputStream);
			inputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		String uriPath = request.getRequestURI();
		String[] uriSplit = uriPath.split("/");
		String classPackageName = properties.getProperty(uriSplit[uriSplit.length-1]);
		
		try {
			Class class1 = Class.forName(classPackageName);
			Command command = (Command) class1.newInstance();
			String responsePath = command.execute(request, dao);
			RequestDispatcher dispatcher = request.getRequestDispatcher(responsePath);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

}
