<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 정보수정</title>
    <link rel="stylesheet" href="css/defalut.css">
	<link rel="stylesheet" href="css/admin_view.css">
</head>
<body>
<%


String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
%>
    <div class="wrap">
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
                                <%
           				 if(userID == null){
           					 %>
           				 <a href="login.jsp" class="login">로그아웃</a>
           	 <%
            }else {
         	   %>
         	   <a href="admin.jsp" class="login">정보수정</a>
         	   <a href="logoutAction.jsp" class="login">로그아웃</a>
                  <%
            }
                  %>
                    </li>
                </ul>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                        <a href="">고객 관리</a>
                        <a href="">게시판 관리</a>
                        <a href="">오퍼링 관리</a>
                        <a href="">리소스 관리</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <li id="point_txt">고객 관리</li>
                        <a href="#">전체 회원 정보 조회</a>
                        <a href="#">회원 이메일 발송</a>
                        <a href="#">차단 회원</a>
                        <a href="#">신규 회원 조회</a>
                        <a href="#">회원 정보 상세보기</a>
                    </ul>
                    <ul>
                        <li id="point_txt">게시판 관리</li>
                        <a href="">새 게시물 작성</a>
                        <a href="">게시물 수정 및 삭제</a>
                    </ul>
                    <ul>
                        <li id="point_txt">오퍼링 관리</li>
                        <a href="">오퍼링 진행 목록</a>
                        <a href="">오퍼링 신청 목록</a>
                    </ul>
                    <ul>
                        <li id="point_txt">리소스 관리</li>
                        <a href="">리소스 목록 보기</a>
                        <a href="">리소스 신청 현황</a>
                        <a href="">리소스 제공 현황</a>
                    </ul>
            </nav>
        </header>
</body>
</html>