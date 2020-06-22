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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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

		// 获取提交对象
		String name = request.getParameter("name");
		String password = request.getParameter("password");

//		System.out.println("id="+name);
		// 判断输入是否为空
		if (name == null || "".equals(name) || password == null || "".equals(password)) {
			response.sendRedirect("Login.jsp");
		} else {
			// 创建服务的对象，调用登录的方法
			UserDaoImp userI = new UserDaoImp();
			UserBean Userb = new UserBean();

			// 将UserBean实例作为userI的login方法的参数，判断userI是否存在数据当中
			Userb = userI.login(name, password);
			if (Userb != null) {
				response.sendRedirect("showFlower.jsp");
			} else {
				response.sendRedirect("Login.jsp");
			}

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
