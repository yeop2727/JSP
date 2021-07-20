<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>


<%@ page import="java.sql.*"%>


<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String jdbc = "jdbc:oracle:thin:@localhost:1521:XE";
String id   = "";
String pwd = "";

Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection(jdbc,id,pwd);

String custno = request.getParameter("custno");

String sql = "select * from member_tbl_02 where custno=?";
pstmt.setString(1, custno);
rs = pstmt.executeQuery();
rs.next();

%>

  <form action=edit_ok.jsp method="GET">
   <table id = table1>
     <tr>
       <td>회원번호(자동발생)</td>
       <td><input type="text" name="custno" size=10 value=<%=rs.getString("custno") %> /></td>
     </tr>
     <tr>
       <td>회원성명</td>
       <td><input type="text" name="custname" size=10 value=<%=rs.getString("custname") %> /></td>
     </tr>
     <tr>
       <td>회원전화</td>
       <td><input type="text" name="phone" value=<%=rs.getString("phone") %> /></td>
     </tr>
     <tr>
       <td>회원주소</td>
       <td><input type="text" name="address" size=40  value='<%=rs.getString("address") %>' /></td>
     </tr>
     <tr>
        <td>가입일자</td>
        <td><input type="text" name="joindate"  value=<%=rs.getString("joindate")%> /></td>
     </tr>
     
     <tr>
        <td>고객등급<br>[A:VIP, B:일반, C:직원]</td>
        <td><input type="text" name="grade" size=3 value=<%=rs.getString("grade")%> /></td>
     </tr>
     <tr>
        <td>도시코드</td>
        <td><input type="text" name="city" size=3 value=<%=rs.getString("city")%> /></td>
     </tr>
     <tr>
        <td colspan=2 align="center">
          <input type="submit" value="수정" />&emsp;&emsp;
          <input type="button" value="조회" />
        </td>
     </tr>
     </table>
    </form>




<%@ include file="bottom.jsp"%>