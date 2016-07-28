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
   
   <tianfang2:forEach2  items="${list}"  var="currentElement" >
  	${currentElement} <br />
  
   </tianfang2:forEach2>
   	<hr />
 <%
	Set set = new HashSet();
	set.add("aaabb");
	set.add("bbb432");
	set.add("ccc423");
	pageContext.setAttribute("set", set);
	%>
	<tianfang2:forEach2 items="${set}" var="currentElement">
		${currentElement}<br/>
	</tianfang2:forEach2>
   
   <hr />
     <%
  	Map map=new HashMap();
  	map.put("a","aaa");
  	map.put("b","bbb");
  	map.put("c","ccc");
  	
  	
  	pageContext.setAttribute("map",map);
  
   %>
    <tianfang2:forEach2  items="${map}"  var="me" >
  	${me.key}=${me.value} <br />
  
   </tianfang2:forEach2>
   
   <hr />
     <%
  	String strs[]={"a","b","c"};
  	pageContext.setAttribute("strs",strs);
  
   %>
    <tianfang2:forEach2  items="${strs}"  var="s" >
  	${s} <br />
  
   </tianfang2:forEach2>
   
   
      <hr />
     <%
  	int ii[]={1,2,3};
  	pageContext.setAttribute("ii",ii);
  
   %>
    <tianfang2:forEach2  items="${ii}"  var="s" >
  	${s} <br />
  
   </tianfang2:forEach2>
   
  </body>
</html>
