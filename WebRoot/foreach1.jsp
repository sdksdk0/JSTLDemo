<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.tianfang1314.cn/webapp2"   prefix="tianfang2" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'foreach1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
   
   	<%
   		List list=new ArrayList();
   		list.add("aaa");
   		list.add("bbb");
   		list.add("ccc");
   		
   		pageContext.setAttribute("list",list);
   	 %>
   
   <tianfang2:forEach1  items="${list}"  var="currentElement" >
  	${currentElement} <br />
  
   </tianfang2:forEach1>
   	
  
   
  </body>
</html>
