package com.myDao;



import com.myBean.UserBean;

public interface UserDao {
	//注册
	boolean add(UserBean ub);
	//登录
	UserBean login(String name,String password);
	//反馈
	boolean addBack(UserBean ub3);
	
	
	

}
