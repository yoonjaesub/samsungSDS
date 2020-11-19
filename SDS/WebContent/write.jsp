<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
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
        .row th {width: 800px; text-align: center; height: 40px; border: 1px solid rgb(19, 67, 80); background-color: rgb(190, 214, 221); margin: 0 auto;}
        .row td {width: 300px; text-align: center; height: 40px; border: 1px solid #333;}
        .row td input { width: 600px;}
        .row td textarea { height: 300px;margin: 10px; width: 600px;}
        .btn { width: 600px; margin-left: 100px; margin-top: 20px; background-color: rgb(190, 214, 221);}
        .btn:hover { background-color: rgb(19, 67, 80); color: white;}
    </style>
</head>
<body>
<%


String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
%>
    <div class="wrap">
        <jsp:include page="header.jsp" flush="false"/>
        <div class="contents">
           <div class="row" style="margin-top:300px;">
           <form method="post" action="writeAction.jsp ">
            <table style ="text-align:center; border:1px solid #dddddd" >
           <thead>
           <tr>
           <th colspan="2">글쓰기</th>
           	
           </tr>
           </thead>
           <tbody>
           <tr>
           <td><input type="text" placeholder="글 제목 " name="title" maxlength="50" /></td>
           </tr>
           <tr>
           <td><textarea placeholder="내용 " name="content" maxlength="2048"></textarea> </td>
  
           </tr>
           </tbody> 
           
           </table>
           <input type="submit"  value="글쓰기"/ class="btn">
            </form>
           </div>
                   
        </div>
        <jsp:include page="footer.jsp" flush="false"/>
    </div>   
</body>
</html>