<%@page import="cn.tf.core.domain.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
  
  	<%
  	pageContext.setAttribute("data", "aaa");
  	
  	 %>
    
    <c:out value="${data}"></c:out>
    
    <c:out value="${data}"  default="无" ></c:out>
    
    <!-- c:set -->
    <!-- 相当于   pageContext.setAttribute("s1","aaa") -->
    <c:set var="s1" value="aaa"  scope="page" ></c:set>
    ${pageScope.s1}<br />
    <%
    pageContext.setAttribute("student1", new Student());
    
     %>
     <c:set property="name" target="${student1}"  value="王大锤" ></c:set>
     ${student1.name}
    
    
    <%
    pageContext.setAttribute("map", new HashMap());
     %>
    
    <!-- map.put("a","aaa") -->
    <c:set property="a" value="aaa" target="${map}" ></c:set>
    
   是空的么: ${empty map}
    
    <%
    
    	pageContext.setAttribute("p","pp");
    	request.setAttribute("p", "rq");
    	session.setAttribute("p", "sp");
    	application.setAttribute("p", "ap");
    	
     %>
    page:${pageScope.p }<br />
    request:${requestScope.p}<br />
    
    
    
    <c:remove var="p" scope="page"/>
    
    <!-- 异常 -->
    <c:catch></c:catch>
    
    
    
    
    
    
    
    
  </body>
</html>
