<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
   String custno = request.getParameter("custno");
   String custname = request.getParameter("custname");
   String phone = request.getParameter("phone");
   String address = request.getParameter("address");
   String joindate = request.getParameter("joindate");
   String grade = request.getParameter("grade");
   String city = request.getParameter("city");
%>

<%
   Connection con = null;
   PreparedStatement pstmt = null;
   
   String jdbc = "jdbc:oracle:thin:@localhost:1521:XE";
   String id   = "";
   String pwd = "";
   
   Class.forName("oracle.jdbc.OracleDriver");
   con = DriverManager.getConnection(jdbc,id,pwd);
   
   String sql = "insert into member_tbl_02 (custno,custname,phone,address,joindate,grade,city)";
          sql = sql + " values(?,?,?,?,?,?,?)" ;
          
   pstmt = con.prepareStatement(sql);
   pstmt.setString(1,custno);
   pstmt.setString(2,custname);
   pstmt.setString(3,phone);
   pstmt.setString(4,address);
   pstmt.setString(5,joindate);
   pstmt.setString(6,grade);
   pstmt.setString(7,city);
   
   pstmt.executeUpdate();

%>