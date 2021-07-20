<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>
<%@ page import="java.sql.*"%>

<body>
	<section>
<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String jdbc = "jdbc:oracle:thin:@localhost:1521:XE";
String id   = "";
String pwd = "";

Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection(jdbc,id,pwd);

String sql = "select * from member_tbl_02";
pstmt = con.prepareStatement(sql);
rs = pstmt.executeQuery();

%>
<br><br>
<div id=title>
  <br>
  <font size=5><b>홈쇼핑 회원목록 조회/수정</b></font>
  <br><br>
</div>

<table id = table2>
  <tr align="center">
   <td><a href = edit.jsp>회원번호</a></td>
   <td>회원성명</td>
   <td>전화번호</td>
   <td>주소</td>
   <td>가입일자</td>
   <td>고객등급</td>
   <td>거주지역</td>
  </tr>
<%
  while(rs.next()){
	  String grade = rs.getString("grade");
	  String level = "";
	    if(grade.equals("A")){
	    	level="VIP";
	    }else if(grade.equals("B")){
	    	level="일반";
	    }else if(grade.equals("C")){
	    	level="직원";
	    }else{
	    	level="등급없음";
	    }
%>
 <tr>
    <td><%=rs.getString("custno") %></td>
    <td><%=rs.getString("custname") %></td>
    <td><%=rs.getString("phone") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getString("joindate").substring(0,10) %></td>
    <td><%=level%></td>
    <td><%=rs.getString("city") %></td>
 </tr>
<% 	  
  }
%>  

</table>
<%
  rs.close();
  pstmt.close();
  con.close();
  
%>
	</section>
</body>
<%@ include file = "bottom.jsp"%>
