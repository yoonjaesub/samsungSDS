<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS</title>
    <link rel="stylesheet" href="css/defalut.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<body>
<%


	String userID = null;
		if(session.getAttribute("userID") != null){
			
			userID = (String)session.getAttribute("userID");
		}
		int pageNum = 1;
		if(request.getParameter("pageNum")!=null){
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
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
           				 <a href="login.jsp" class="login">로그인</a>
           	 <%
            }else {
         	   %>
         	   <a href="admin.jsp" class="login">정보수정</a>
         	   <a href="logoutAction.jsp" class="login">로그아웃</a>
                  <%
            }
                  %> 
                 
                       <a href="">채용정보</a>
                        <a href="">기업 서비스</a>
                        <a href="notice.jsp">고객 서비스</a>
                    </li>
                </ul>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                        <a href="">DT엔진</a>
                        <a href="">오퍼링</a>
                        <a href="">라이브러리</a>
                        <a href="">뉴스룸</a>
                        <a href="">회사정보</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <li id="point_txt">DT Engine</li>
                        <a href="#">AI/Analytics</a>
                        <a href="#">IoT</a>
                        <a href="#">Automation</a>
                        <a href="#">Collaboration</a>
                        <a href="#">Blockchain</a>
                        <a href="#">Cloud</a>
                        <a href="#">Security</a>
                    </ul>
                    <ul>
                        <li id="point_txt">오퍼링</li>
                        <a href="">Top of Mind</a>
                        <a href="">Industry</a>
                        <a href="">IT서비스</a>
                        <a href="">Logistics</a>
                    </ul>
                    <ul>
                        <li id="point_txt">라이브러리</li>
                        <a href="">인사이트 리포트</a>
                        <a href="">리소스</a>
                    </ul>
                    <ul>
                        <li id="point_txt">뉴스룸</li>
                        <a href="">언론보도</a>
                        <a href="">이슈와 팩트</a>
                        <a href="">삼성SDS 스토리</a>
                    </ul>  
                    <ul>
                        <li id="point_txt">회사정보</li>
                        <a href="">회사소개</a>
                        <a href="">투자정보</a>
                        <a href="">지속가능경영</a>
                        <a href="">이벤트</a>
                        <a href="">채용</a>
                        <a href="">XEED-LAB</a>
                    </ul>
                </div>
            </nav>
        </header>
</body>
</html>