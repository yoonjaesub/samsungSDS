<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="notice.NoticeBeans" %>
    <%@ page import="notice.NoticeDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/main_c.css">
    <style>
        .contents {height: 500px; width: 1280px; margin: 0 auto; margin-top: 300px;}
        .row { width: 800px; margin: 0 auto;}
        .row th {width: 800px; text-align: center; height: 40px; border: 1px solid rgb(19, 67, 80); background-color: rgb(190, 214, 221);}
        .row td {width: 300px; text-align: center; height: 40px; border: 1px solid #333;}
    </style>
</head>
<body>
<%


String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
	int num = 0;
	if(request.getParameter("num") != null){
		num = Integer.parseInt(request.getParameter("num"));
	}
	if (num == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지않은 글입니다.')");
		script.println("location.href = 'notice.jsp'");
		script.println("</script>");
	}
	NoticeBeans nb = new NoticeDAO().getBbs(num);
	
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
         	   <a href="admin.jsp" class="login">회원관리</a>
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
        <div class="contents">
           <div class="row">
          
            <table >
           <thead>
           <tr>
           <th colspan="3">글보기</th>
           	
           </tr>
           </thead>
           <tbody>
           <tr>
           <td>글제목 </td>
  			<td  colspan="2"><%= nb.getTitle() %> </td>
           </tr>
            <tr>
           <td>작성자 </td>
  			<td  colspan="2"><%= nb.getUserID() %> </td>
           </tr>
             <tr>
           <td>내용 </td>
  			<td  colspan="2"><%= nb.getContent() %> </td>
           </tr>
           </tbody> 
           
           </table>
           <input type="submit"  value="글쓰기"/>
           
           </div>
                   
        </div>
<%@include file ="./footer.jsp" %>