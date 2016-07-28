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
    
    <title>My JSP 'demo2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    
    	<c:set var="grade" value="A" ></c:set>
    	<c:choose>
    		<c:when test="${grade=='A' }" >
    		优秀
    		</c:when>
    		<c:when test="${grade=='B' }" >
    		中等
    		</c:when>
    		<c:when test="${grade=='C' }" >
    		及格
    		</c:when>
    	<c:otherwise>
    		不及格
    	</c:otherwise>
    </c:choose>
    
    
    <hr />
    <c:forEach  begin="1" end="100" var="num">
    	${num }&nbsp;&nbsp;
    </c:forEach>
    
    
  <%--   <%
    	//遍历list,set,map
    	List list=new ArrayList();
    	list.add("aaa");
    	list.add("bbb");
    	list.add("ccc");
    	pageContext.setAttribute("list", list);
    	
    	
     %>
     <table border="1" >
     	<c:forEach items="${list}"  var="l"  step="1"  begin="2">
     		<tr>
     			<td>${l}</td>
     		</tr>
     		</c:forEach>
     </table> --%>
    
    
    <%
    //遍历：list set map和数组
    List list = new ArrayList();
    list.add("aaa");
    list.add("bbb");
    list.add("ccc");
    list.add("ddd");
    list.add("eee");
    list.add("fff");
    pageContext.setAttribute("list", list);
    %>
    <table border="1">
    	<tr>
    		<th>数据</th>
    		<th>索引</th>
    		<th>计数</th>
    		<th>第一个</th>
    		<th>最后一个</th>
    	</tr>
    	<!-- c:forEach中的varStatus属性。
    		指向一个字符串，该字符串引用一个对象。  map.put("vs",一个对象);
    		这个对象记录着当前遍历的元素的一些信息：
    			getIndex():返回索引。从0开始
    			getCount():返回计数。从1开始
    			isLast():是否是最后一个元素
    			isFirst():是否是第一个元素
    	 -->
    	<c:forEach items="${list}" var="l" varStatus="vs">
	    	<tr class="${vs.index%2==0?'odd':'even' }">
	    		<td>${l}</td>
	    		<td>${vs.index}</td>
	    		<td>${vs.count}</td>
	    		<td>${vs.first}</td>
	    		<td>${vs.last}</td>
	    	</tr>
    	</c:forEach>
    </table>
    <hr/>
    <!--组织URL地址；自动URL重写 ；结合param标签，对中文请求参数进行URL编码-->
    <c:url value="/core/demo1.jsp" var="u1" scope="page"></c:url><!-- pageContext.setAttribute("u1","/day11_01_jstlCore/1.jsp") -->
    <a href="${u1}">猛戳</a>
     <hr/>
     <c:url value="/core/demo1.jsp" var="u2">
     	<c:param name="username" value="你好"></c:param>
     	<c:param name="password" value="123"></c:param>
     </c:url>
     <a href="${u2}">猛戳</a>
    
  </body>
</html>
