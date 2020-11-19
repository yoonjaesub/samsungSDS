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
       <jsp:include page="header.jsp" flush="false"/>
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
        <jsp:include page="footer.jsp" flush="false"/>
    </div>   
</body>
</html>