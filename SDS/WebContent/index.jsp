<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS</title>
    <link rel="stylesheet" href="css/defalut.css">
    <link rel="stylesheet" href="css/main_c.css">
   
    
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
            <div class="ban">
                <a href=""><img src="img/ban1.jpg" alt=""></a>
            </div>
            <li id="point_txt" style="font-weight: 550; font-size: 24px; text-align: center; margin-top: 50px;">Realize your vision</li>
            <div class="product">
                <ul>
                    <li>
                        <a href="#">
                            <img src="img/ban2.jpg" alt="">
                        </a>
                        <span>인공지능</span> <br>
                        <span id="point_txt">제조에서 마케팅 혁신까지</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/ban3.jpg" alt="">
                        </a>
                        <span>블록체인</span> <br>
                        <span id="point_txt">다양한 산업에 확장 가능한 블록체인</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/ban4.jpg" alt="">
                        </a>
                        <span>클라우드</span> <br>
                        <span id="point_txt">맞춤형 클라우드 서비스 / 경쟁력 강화</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/ban5.jpg" alt="">
                        </a>
                        <span>보안</span> <br>
                        <span id="point_txt">검증된 보안 솔루션과 서비스</span>
                    </li>
                </ul> 
            </div> 
            <li id="point_txt" style="clear: both; font-weight: 550; font-size: 24px; text-align: center; margin-top: 50px;">최신 소식</li>
            <div class="product2">
                <ul>
                    <li>
                        <a href="#">
                            <img src="img/news1.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">삼성SDS - NHN, 디지털 트랜스포메이션 사업협력 강화</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/news2.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">삼성SDS - 서울대, AI/데이터 분석 분야 업무협약 체결</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/news3.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">삼성SDS 2분기 매출 2조 5,666억 원, 영업이익 1,967억원</span>
                    </li>
                </ul> 
            </div> 
        </div>
        <jsp:include page="footer.jsp" flush="false"/>
    </div>   
    
</body>
</html>