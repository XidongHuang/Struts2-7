<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<s:debug></s:debug>
	
	
	<a href="testI18n.action?request_locale=en_US">English</a>
	<a href="testI18n.action?request_locale=zh_CN">Chinese</a>
	<br><br>
	<a href="index.jsp">Index Page</a>
	
	
	
	
	<s:text name="time">
		<s:param value="date"></s:param>
	</s:text>

	<br>
	<br>
	<s:text name="time2"></s:text>
	<br>
	<br>
	<s:form action="">

		<!-- 
		"label" tag has use %{getText('username')} to gain value from international source files.
		Because in the valueStack, DefaultTextProvider affords "getText()" method.
		And in struts2 framework, there is no String in label, instead of a OGNL.
		So use %{} to wrap getText() for OGNL
	
	-->

		<!-- 
	
		In jsp page, it can use <s:text name="" /> to get values in the international resource file 
	
	 -->
		<s:text name="username" />
		<s:textfield name="username" label="%{getTest('username')}"></s:textfield>

		<!-- "key" gains value from source files -->
		<s:text name="username" />
		<s:textfield name="username" key="username"></s:textfield>
		<s:text name="password" />
		<s:password name="password" key="password"></s:password>

		<s:submit key="submit" value="%{getText('submit')}"></s:submit>

	</s:form>

</body>
</html>