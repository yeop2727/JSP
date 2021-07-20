<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ page import="java.sql.*"%>


<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = null;

String jdbc = "jdbc:oracle:thin:@localhost:1521:XE";
String id   = "";
String pwd = "";

Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection(jdbc,id,pwd);
%>