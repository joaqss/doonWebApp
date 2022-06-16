<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%@page 
import= "java.sql.*"
import = "javax.swing.JOptionPane.*"
import =  "java.awt.*"
import = "java.awt.event.*"
import  = "javax.swing.*"
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doon_db", "root", "joaqsspacetee1220");

String InputEmail = request.getParameter("email");
String InputPassword = request.getParameter("password");
Statement stmt = con.createStatement() ; 

try {
    if (InputEmail != null && InputPassword != null) {
        String sql = "Select * from userinfo_tbl Where userEmail = '"+email+"' and userPassword = '"+password+"'";
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.next()) {
            //in this case enter when at least one result comes it means user is valid
            response.sendRedirect("INSERT HTML FILE HERE"); 
        } 
        
        else {
        	out.println("Username or password is wrong. Try again.") ; 
        }
    }

 

	} 
catch (SQLException err) {
    out.println("Error") ; }

%>

</body>
</html>
