package com.tony.struts2.i18n.app;

import java.util.Arrays;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class TestI18nAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Date date = null;
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String execute() throws Exception{
		
		date = new Date();
		
		
		//1. Get value in international resource 
		String username = getText("username");
		System.out.println(username);
		
		//2. With place holder
		String time = getText("time", Arrays.asList(date));
		System.out.println(time);
		
		return SUCCESS;
	}
	
}
