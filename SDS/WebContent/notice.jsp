<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.security.auth.callback.ConfirmationCallback"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="notice.NoticeBeans" %>
    <%@ page import="notice.NoticeDAO" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/main_c.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .contents {height: 500px; width: 1280px; margin: 0 auto; margin-top: 300px;}
        .row { width: 1000px; margin: 0 auto;}
        .row th {width: 300px; text-align: center; height: 40px; border: 1px solid rgb(19, 67, 80); background-color: rgb(190, 214, 221);}
        .row td {width: 300px; text-align: center; height: 40px; border: 1px solid #333;}
    </style>
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
        <jsp:include page="header.jsp" flush="false"/>
        <div class="contents">
           <div class="row" style="margin-top:300px">
           <table style ="text-align:center; border:1px solid #dddddd" >
	           <thead>
	           		<tr>
	           			<th>번호</th>
	           			<th>제목</th>
	           			<th>작성자</th>
	           		</tr>
	           </thead>
	           <tbody>
	           <%
	           NoticeDAO noticeDAO = new NoticeDAO();
	           ArrayList<NoticeBeans> list = noticeDAO.getList(pageNum);
	           for(int i=0; i<list.size(); i++){
	        	%>
	        		<tr>
			           <td><%= list.get(i).getNum()+1 %></td>
			           <td><a href="view.jsp?num=<%= list.get(i).getNum()%>"><%= list.get(i).getTitle() %></a></td>
			           <td><%= list.get(i).getUserID() %></td>         
		         	</tr>       	   
	        	<% } %>
	           </tbody>
           </table>
           <%  if(pageNum != 1) {  %>
           <a href="notice.jsp?pageNum=<%=pageNum - 1%>">이전</a>
           <%  } if(noticeDAO.nextPage(pageNum+1)){ %>
           <a href="notice.jsp?pageNum=<%=pageNum + 1%>">다음</a>
           <% }  %>
           	<!-- 회원만넘어가도록 -->
			<% if (session.getAttribute("userID") != null) { %>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
 			<% } else { %>
			<button class="btn btn-primary pull-right" onclick="if(confirm('로그인 하세요'))location.href='login.jsp';" type="button">글쓰기</button>
			<% } %>
			</div>
        </div>
       <jsp:include page="footer.jsp" flush="false"/>
    </div>   
</body>
</html>