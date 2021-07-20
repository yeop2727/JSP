<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>    
<%@ page import="java.util.Date" %>
<%@ include file = "time.jsp" %>
<%@ include file = "dbcon.jsp" %>

<%
  try{
	  String custno = request.getParameter("custno");
	  String custname = request.getParameter("custname");
	  String phone = request.getParameter("phone");
	  String address = request.getParameter("address");
	  String joindate = request.getParameter("joindate");
	  String grade = request.getParameter("grade");
	  String city = request.getParameter("city");
	  
	       sql = "update member_tbl_02 ";
	  sql = sql +" set custno=?, custname=?, phone=?, address=?, joindate=?, grade=?, city=?;
	  sql = sql +"where custno=?";
	  
	  pstmt = con.prepareStatement(sql);
	  
	  pstmt.setString(1, custno);
	  pstmt.setString(2, custname);
	  pstmt.setString(3, phone);
	  pstmt.setString(4, address);
	  pstmt.setString(5, joindate);
	  pstmt.setString(6, grade);
	  pstmt.setString(7, city);
	  pstmt.setString(8, custno);
	  
	  pstmt.executeUpdate();
	  
  }catch(Exception e){
	  e.printStackTrace();
  }finally{
	  pstmt.close();
	  con.close();
  }

 response.sendRedirect("member_list.jsp");
 

%>



