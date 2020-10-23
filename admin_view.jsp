<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성 SDS - 관리자페이지</title>
    <link rel="stylesheet" href="css/defalut.css">
	<link rel="stylesheet" href="css/admin_view.css">
</head>
<body>
<%@include file ="./admin_header.jsp" %>
    <div class="contents">
        <h2>관리자님 환영합니다.</h2>
        <br>
        <h5>희망하시는 업무를 선택해주세요.</h5>
        <h5>현재 페이지는 전체 회원 정보 조회 페이지 입니다.</h5>
        <div class="left">
            <a href="">전체 회원 정보 조회</a>
            <a href="">회원 이메일 발송</a>
            <a href="">차단 회원</a>
            <a href="">신규 회원 조회</a>
            <a href="">회원 정보 상세보기</a>
        </div>
        <div class="right">
            <table>
                <th>성명</th>
                <th>이메일</th>
                <th>나이</th>
                <th>닉네임</th>
                <th>주소</th>
                <th>가입일</th>
                <th>생년월일</th>
                <tr>
                    <td>윤재섭</td>
                    <td>apd_korea@naver.com</td>
                    <td>25</td>
                    <td>라산</td>
                    <td>관악구</td>
                    <td>20-10-20</td>
                    <td>96-12-16</td>
                </tr>
                <tr>
                    <td>김병석</td>
                    <td>kbs@naver.com</td>
                    <td>25</td>
                    <td>병순</td>
                    <td>의정부</td>
                    <td>20-09-11</td>
                    <td>96-05-11</td>
                </tr>
                <tr>
                    <td>육현석</td>
                    <td>6hs@naver.com</td>
                    <td>25</td>
                    <td>오른</td>
                    <td>제주</td>
                    <td>20-08-08</td>
                    <td>96-07-23</td>
                </tr>
                <tr>
                    <td>정하늘</td>
                    <td>skysky@naver.com</td>
                    <td>18</td>
                    <td>스카이</td>
                    <td>서울시</td>
                    <td>20-10-08</td>
                    <td>03-05-05</td>
                </tr>
                <tr>
                    <td>서지원</td>
                    <td>wesrG1@naver.com</td>
                    <td>26</td>
                    <td>wesrG1</td>
                    <td>서울시</td>
                    <td>19-12-02</td>
                    <td>95-03-01</td>
                </tr>
                <tr>
                    <td>윤준오</td>
                    <td>junoflow@naver.com</td>
                    <td>21</td>
                    <td>juno</td>
                    <td>청주</td>
                    <td>19-07-19</td>
                    <td>00-09-11</td>
                </tr>
                <tr>
                    <td>백유안</td>
                    <td>whiteUinside@daum.net</td>
                    <td>12</td>
                    <td>Uinside</td>
                    <td>대전</td>
                    <td>20-01-01</td>
                    <td>09-02-14</td>
                </tr>
            </table>
        </div>
        
    </div>
<%@include file ="./footer.jsp" %>
    </div>   
</body>
</html>