<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 회원탈퇴</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/join.css">
</head>
<body>
<%@include file ="./header.jsp" %>
        <div class="contents">
            <div class="login_form">
                <h1>그동안 이용해 주셔서 감사합니다</h1><br>
                <h3>비밀번호를 입력해주십시요</h3>
               <form action="deleteAction.jsp" method="post">
               <input type="text" name="userPassword" style="width: 300px; height: 25px;"/>
               <input type="submit" value="탈퇴하기" style="margin-top: 50px; width: 100px; height: 30px;" />
               </form>
            </div>
        </div>
<%@include file ="./footer.jsp" %>