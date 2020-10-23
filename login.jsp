<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 로그인</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/login.css">

</head>
<body>
<%@include file ="./header.jsp" %>
        <div class="contents">
            <a href="index.jsp" class="logo"><img src="img/logo.png" alt="JScompany"></a>
            <form action="loginAction.jsp" class="login" method="post">
                <input type="text" placeholder="아이디" id="lo_id" required name="userID">
                <input type="text" placeholder="패스워드" id="lo_pw" required name="userPassword">
                <input type="submit" value="로그인" id="subm">
            </form>
            <ul>
                <li class="find">
                    <a href="findId.html">아이디 찾기</a>
                    <a href="findPw.html">비밀번호 찾기</a>
                    <a href="newmem.jsp">회원가입</a>
                </li>
            </ul>
        </div>
<%@include file ="./footer.jsp" %>