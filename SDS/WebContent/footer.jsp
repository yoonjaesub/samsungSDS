<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS</title>
    <link rel="stylesheet" href="css/defalut.css">
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
 <footer class="ft">
            <div class="ft_top">
                <ul>
                    <li id="point_txt">모든 오퍼링 보기</li>
                    <li id="point_txt">사이트 맵</li>
                </ul>
                <ul>
                    <li id="point_txt">회사정보</li>
                    <a href="">회사소개</a>
                    <a href="">공지사항</a>
                    <a href="">채용</a>
                    <a href="">Awards & Recognition</a>
                </ul>
                <ul>
                    <li id="point_txt">SDS NOW</li>
                    <a href="">인사이트 리포트</a>
                    <a href="">언론보도</a>
                    <a href="">윤리경영</a>
                </ul>
                <ul>
                    <li id="point_txt">고객지원</li>
                    <a href="">문의하기</a>
                    <a href="">보안신고센터</a>
                    <a href="">제보하기</a>
                </ul>  
            </div>
            <div class="ft_bot">
                <ul class="ft_bot_menu">
                    <li><a href=""id="point_txt" style="font-weight: 550;">개인정보처리방침</a></li>
                    <li><a href="" >이용약관</a></li>
                    <li><a href="">서비스 이용약관</a></li>
                    <li><a href="">이메일무단수집거부</a></li>
                    <li><a href="">아이디어 정책</a></li>
                </ul>
                <ul class="copyright">
                    <li>서울시 송파구 올림픽로 35길 125 삼성SDS (05510)</li>
                    <li style="margin-left: 15px;"> 대표전화 : 02-6155-3114</li>
                    <li>E-mail : cbk@coffeebeankorea.com</li>
                </ul>
                <li>Copyright ©2018 SAMSUNG SDS. All rights reserved.</li>
            </div>
        </footer>
</body>
</html>