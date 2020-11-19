<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 회원가입</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/join.css">
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
            <a href="index.jsp" class="logo"><img src="img/logo.png" alt=""></a>
            <form action="newmemAction.jsp" class="form" method="post">
                <label for="">아이디 &nbsp;&nbsp;</label>
                <input type="text" placeholder="아이디를 입력해주세요" required id="inp" name="userID"><br>
                <label for="">패스워드</label>
                <input type="password" placeholder="비밀번호를 입력해주세요" required id="inp" name="userPassword"><br>
                <label for="">이름 &nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" placeholder="성명을 입력해주세요" required id="inp" name="userName"><br>
                <label for="">이메일&nbsp;&nbsp;&nbsp;</label>
                <input type="email" required id="inp" name="userEmail"> <br>
                <input type="submit" value="가입하기" id="join_mem">
            </form>
        </div>
       <jsp:include page="footer.jsp" flush="false"/>
    </div>
</body>
</html>