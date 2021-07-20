<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./top.jsp"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>

<%
   SimpleDateFormat format1 = new SimpleDateFormat("YYYY-MM-dd");
   Date time = new Date();
   String time1 = format1.format(time);
%>
<section>
  <div id = title>
    <br>
    <font size=5>홈쇼핑 회원 등록</font>
    <br><br>
  </div>
  <form action=form_ok.jsp method="GET">
   <table id = table1>
     <tr>
       <td>회원번호(자동발생)</td>
       <td><input type="text" name="custno" size=10 /></td>
     </tr>
     <tr>
       <td>회원성명</td>
       <td><input type="text" name="custname" size=10 /></td>
     </tr>
     <tr>
       <td>회원전화</td>
       <td><input type="text" name="phone" /></td>
     </tr>
     <tr>
       <td>회원주소</td>
       <td><input type="text" name="address" size=40 /></td>
     </tr>
     <tr>
        <td>가입일자</td>
        <td><input type="text" name="joindate" value=<%=time1%> ></td>
     </tr>
     <tr>
        <td>고객등급<br>[A:VIP, B:일반, C:직원]</td>
        <td><input type="text" name="grade" size=3 /></td>
     </tr>
     <tr>
        <td>도시코드</td>
        <td><input type="text" name="city" size=3 /></td>
     </tr>
     <tr>
        <td colspan=2 align="center">
          <input type="submit" value="등록" />&emsp;&emsp;
          <input type="button" value="조회" />
        </td>
     </tr>
     </table>
    </form>
</section>
<%@ include file="./bottom.jsp"%>