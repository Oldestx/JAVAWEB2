package com.myBean;

public class UserBean {
	
	//用户注册、登录页 1表
	private String email;
	private String name;
	private String password;
	
	//用户反馈页数据 2表

	private String telphone;
	private String content;
	public UserBean() {
		super();
	}
	public UserBean(String email, String name, String password, String telphone, String content) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.telphone = telphone;
		this.content = content;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
