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
 * Servlet implementation class backServlet
 */
@WebServlet("/backServlet")
public class backServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public backServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 解决字符编码问题
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");

				// 获取提交对象
				String name = request.getParameter("name");
				String telphone =request.getParameter("telephone");
				String content = request.getParameter("content");

				System.out.println("name="+name);

				// 创建UserBean对象，并设值
				UserBean ub3 = new UserBean();
				ub3.setName(name);
				ub3.setTelphone(telphone);
				ub3.setContent(content);
				
				System.out.println(ub3.getContent());

				// 创建UserDaoImp的对象，写入提交数据，并判断是否写入
				UserDaoImp udi = new UserDaoImp();

				boolean result = udi.add(ub3);
				if (result == true) {
					response.sendRedirect("addSucess2.jsp");
				} else {
					response.sendRedirect("addUserfail2.jsp");
				}
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
