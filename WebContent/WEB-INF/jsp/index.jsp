<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html
		PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
		"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta content="text/html;charset=UTF-8" http-equiv="Content-Type" >
		<title>index</title>
	</head>
	<body>
		<p>Hello Web!</p>
		<p>
			<%-- <% Date now = new Date(); %>
			服务器时间: <fmt:formatDate value="<%=now %>" pattern="yyyy-MM-dd HH:mm:ss"/> --%>
			服务器时间: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</p>
	</body>
</html>