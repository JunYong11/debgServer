<%@page import="com.db.loginInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
   loginInfo DB = loginInfo.getInstance();

	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=UTF-8");

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");

   
   String returns = DB.ConDB(id, pw);

   System.out.println("id="+id+"pw="+pw);
   System.out.println(returns);

   // 안드로이드로 전송
   out.println(returns);

%>