<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.UserDAO" %>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
     <jsp:useBean id="user" class="user.UserBeans" scope="page"/>
     <jsp:setProperty name="user" property="userID"/>
     <jsp:setProperty name="user" property="userPassword"/>
     <jsp:setProperty name="user" property="userName"/>
     <jsp:setProperty name="user" property="userEmail"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(user.getUserID()==null||user.getUserPassword()==null||user.getUserName()==null||user.getUserEmail()==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('값을 입력해주세요.')");
		script.println("history.back()");
		script.println("</script>");
		
	}else{
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디가 존재합니다.')");
		script.println("history.back()");
		script.println("</script>");
	}else {
		session.setAttribute("userID",user.getUserID());session.setAttribute("userID",user.getUserID());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입완료!.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
		
	}
	
	
	
	%>
</body>
</html>