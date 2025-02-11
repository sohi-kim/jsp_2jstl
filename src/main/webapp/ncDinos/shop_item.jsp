<%@page import="vo.FanItemVO"%>
<%@page import="dao.FanItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NCDinos Fan Item</title>
<link rel="stylesheet" href="css/orderItem.css">
</head>
<body>
<%
	FanItemVO  vo = null; 
	try {
		int seq = Integer.parseInt(request.getParameter("seq"));
		// request.getParameter("seq") : seq 라는 이름의 파라미터값 가져오기. 
		// Integer.parseInt(문자열) : 문자열을 정수로 변환
		
		FanItemDao dao = FanItemDao.getInstance();
		 vo = dao.selectByPk(seq);  // 파라미터로 전달되 seq 값으로 select 조회.
		 if(vo == null){
			 response.sendRedirect("ncDinos_shop.jsp");
		 }
		//out.print(vo);   // 테스트용
		pageContext.setAttribute("vo", vo);
	}catch (Exception e){
		// seq 파라미터가 없을 때 , 예외 발생. -> 상품 목록 페이지로 리다이렉트 합니다.
		response.sendRedirect("ncDinos_shop.jsp");
	}
	
%>
	<h3>구매</h3>
	<hr/>
	<div class="container">
		<div class="img-box">
		<!-- img 이미지 크기는 부모요소 div 의 100% -->
			<img alt="${vo.title }" src="product/${vo.filename }" width="100%">
		</div>
		<div class="cont-box">
			<h3>${vo.title }</h3>
			<h4>정가 : <fmt:formatNumber value="${vo.price }" pattern="###,###"/> 원</h4>
			<h4>판매가 : <fmt:formatNumber value="${vo.price }" pattern="###,###"/> 원</h4>
			<div class="orderCount">
				주문 수량 : 
				<input type="number" min="1" max="999" size="20" value="1" />
			</div>
			<div class="orderButton">
			<!-- 구매 요구사항 : 반드시 로그인 상태에서 실행. -->
				<button onclick="moveLogin()">구매하기</button>
			</div>
		</div>
	</div>
	<hr/>
	<div style="text-align: center;">
		<button onclick="location.href='ncDinos_shop.jsp'">목록</button>
	</div>
	<script type="text/javascript">
		const useraccount = '${user}'     // jsp 의 애트리뷰트 user를 가져옵니다.
		function moveLogin(){
			if(useraccount == '') {
				if(confirm('구매는 로그인이 필요합니다. 로그인 하시겠습니까?')){
					location.href='../5_login.jsp'   // ../ 는 부모 폴더로 이동
				}
			}
		}
	
	</script>
</body>
</html>





