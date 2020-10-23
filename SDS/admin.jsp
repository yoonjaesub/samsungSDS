<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 정보수정</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/join.css">
</head>
<body>
<%@include file ="./header.jsp" %>
        <div class="contents">
            <div class="login_form">
                <form action="adminAction.jsp" method="post">
                    <a href="index.jsp" class="logo"><img src="img/logo.png" alt=""></a> <br>
                    <label for="" style="font-weight: 550; font-size: 36px;">마이페이지</label> <br>
                    <label>비밀번호</label>
                    <input type="text" placeholder="비밀번호" name="userPassword" id="inp" name="userPassword"><br>
                    <label>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</label>
                    <input type="text"  name="userName" id="inp" name="userName"><br>
                    <label>이&nbsp;메&nbsp;일</label>
                    <input type="text"  name="userEmail" id="inp" name="userEmail"><br>
                    <input type="submit" value="수정" id="join_mem">
                </form>
               <a href="delete.jsp" style="color: black; display: block; margin-top: 50px; font-weight: 550;">회원탈퇴</a>
            </div>
        </div>
<%@include file ="./footer.jsp" %>