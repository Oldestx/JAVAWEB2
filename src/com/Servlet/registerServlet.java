package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myBean.UserBean;
import com.myDao.UserDaoImp;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 解决字符编码问题
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//获取提交对象
		String email=request.getParameter("email");
		String name =request.getParameter("name");
		String password=request.getParameter("password");
		
//		System.out.println(email);
//		System.out.println(name);
//		System.out.println(password);
		
		UserBean ub=new UserBean();
		ub.setEmail(email);
		ub.setName(name);
		ub.setPassword(password);
		
		//创建UserDaoImp
		UserDaoImp udi=new UserDaoImp();
		
//		System.out.println(ub.getEmail());

		
		boolean result=udi.add(ub);
		if(result==true) {
			response.sendRedirect("addSucess.jsp");
		} else {
			response.sendRedirect("addUserfail.jsp");
		}
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
