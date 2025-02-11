<%@page import="dao.FanItemOrderDao"%>
<%@page import="vo.FanItemOrderVO"%>
<%@page import="vo.UserAccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  구매 처리 (insert) 페이지  -->
	<%
	// 파라미터 가져오기
	int seq 
	= Integer.parseInt(request.getParameter("seq"));	
	int price
	= Integer.parseInt(request.getParameter("price"));
	int count
	= Integer.parseInt(request.getParameter("count"));
	
	UserAccountVO vo 
	= (UserAccountVO)session.getAttribute("user");
	
	FanItemOrderVO orderVo =
			new FanItemOrderVO(0,
							 vo.getUserid(),
							 seq,
							 count,
							 count*price,   // pay
							 null);
	FanItemOrderDao orderDao = FanItemOrderDao.getInstance();
	int result = orderDao.insert(orderVo);
	pageContext.setAttribute("result", result);
	pageContext.setAttribute("orderVo", orderVo);
	
// 	out.print(seq);
// 	out.print("<br/>");
// 	out.print(price);
// 	out.print("<br/>");
// 	out.print(count);
// 	out.print("<br/>");
// 	out.print(vo);
	%>
	<c:if test="${result==1 }">
		<h3>구매 완료</h3>
		<ul>
			<li>상품 seq : ${orderVo.orderSeq }</li>	<!-- 구매상품 seq -->	
			<li>구매 수량 : ${orderVo.count }</li>		
			<li>결제 금액 : ${orderVo.pay }</li>	
			<li>구매 일자 : ${orderVo.orderDate }</li>	
		</ul>
	</c:if>
	<c:if test="${result==0 }">
		<h3>구매 처리 중 오류 발생</h3>
	</c:if>
	<button onclick="ncDinos_shop.jsp">팬아이템 상품목록</button>
</body>
</html>