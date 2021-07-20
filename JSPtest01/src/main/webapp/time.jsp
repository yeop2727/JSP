<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>

<%
   SimpleDateFormat format1 = new SimpleDateFormat("YYYY-MM-dd");
   Date time = new Date();
   String time1 = format1.format(time);
%>
