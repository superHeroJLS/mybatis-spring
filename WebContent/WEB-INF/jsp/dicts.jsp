<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<c:set var="path" value="${pageContext.request.contextPath}"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>字典信息</title>
		<script src="${path}/static/jquery-3.1.1.min.js"></script>
	</head>
	<body>
		<table>
			<tr>
				<th colspan="4">字典管理</th>
			</tr>
			<tr>
				<th>类别名</th>
				<th>字典名</th>
				<th>字典值</th>
				<th>操作[<a href="${path}/dicts/add">新增</a>]
			</tr>
			<c:forEach items="${dicts}" var="dict">
				<tr id="dict-${dict.id}">
					<td>${dict.code}</td>
					<td>${dict.name}</td>
					<td>${dict.value}</td>
					<td>
						[<a href="javascript:;" onclick="editById(${dict.id}, '${dict.name}')">编辑</a>]					
						[<a href="javascript:;" onclick="deleteById(${dict.id}, '${dict.name}')">删除</a>]					
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<br/><b style="color:fuchsia;">JSP内置对象如下:</b><br/>
		request:	<b><%=request%> </b><br/>
		response: <b><%=response%></b><br/>
		session: <b><%=session%></b><br/>
		application: <b><%=application%></b><br/>
		out: <b><%=out%></b><br/>
		config: <b><%=config%></b><br/>
		page: <b><%=page%></b><br/>
		<%-- <b>exception: <%=exception%></b><br/> --%>
		
		pageContext:	<b>${pageContext}</b><br/>
		pageContext.request.contextPath:	<b>${pageContext.request.contextPath}</b><br/>
		pageContext.request.requestURI:	<b>${pageContext.request.requestURI}</b><br/>
		pageContext.request.localAddr:	<b>${pageContext.request.localAddr}</b><br/>
		pageContext.request.contentType:	<b>${pageContext.request.contentType}</b><br/>
		pageContext.request.protocol:	<b>${pageContext.request.protocol}</b><br/>
		pageContext.request.servletPath:	<b>${pageContext.request.servletPath}</b><br/>
		pageContext.request.session.maxInactiveInterval:	<b>${pageContext.request.session.maxInactiveInterval}</b><br/>
		pageContext.request.session.valueNames:	<b>${pageContext.request.session.valueNames}</b><br/>
		<c:forEach items="${pageContext.request.session.valueNames}" var="item">
			${item}</br>
		</c:forEach>
		
		pageContext.request.session.sessionContext.ids:	<b>${pageContext.request.session.sessionContext.ids}</b><br/>
		<c:forEach items="${pageContext.request.session.sessionContext.ids}" var="item">
			${item}</br>
		</c:forEach>
		
		pageContext.request.session.servletContext.servletNames:	<b>${pageContext.request.session.servletContext.servletNames}</b><br/>
		<c:forEach items="${pageContext.request.session.servletContext.servletNames}" var="item">
			${item}</br>
		</c:forEach>
		
		pageContext.request.session.servletContext.initParameterNames:	<b>${pageContext.request.session.servletContext.initParameterNames}</b><br/>
		<c:forEach items="${pageContext.request.session.servletContext.initParameterNames}" var="item">
			${item}</br>
		</c:forEach>
		pageContext.request.session.servletContext.servletContextName:	<b>${pageContext.request.session.servletContext.servletContextName}</b><br/>
		
		<script type="text/javascript">
			function deleteById(id, label) {
				alert('删除成功');
			}
			function editById(id, label) {
				alert('编辑成功');
			}
			
			
		</script>
	</body>
</html>