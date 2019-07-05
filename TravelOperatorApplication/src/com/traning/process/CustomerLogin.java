package com.traning.process;

import com.training.daos.DaoImpl;
import com.training.iface.Command;
import com.training.model.Customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class CustomerLogin implements Command{
	
	public CustomerLogin() {
		
		super();
	}

	@Override
	public String execute(HttpServletRequest request, DaoImpl dao) throws ServletException, IOException {
		
		String successURI = "index.jsp";
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		Customer customer = new Customer(userName, passWord);
		dao.customerLoginValidate(customer);
		return successURI;
	}
	
	

}
