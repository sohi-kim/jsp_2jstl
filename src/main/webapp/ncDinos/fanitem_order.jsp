<%@page import="vo.FanItemOrderVO"%>
<%@page import="vo.UserAccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	UserAccountVO vo = (UserAccountVO)session.getAttribute("user");
	
	FanItemOrderVO orderVo =
			new FanItemOrderVO(vo.getUserid(),
							 seq,
							 count,
							 count*price,   // pay
							 null);
	
	out.print(orderVo);
// 	out.print(seq);
// 	out.print("<br/>");
// 	out.print(price);
// 	out.print("<br/>");
// 	out.print(count);
// 	out.print("<br/>");
// 	out.print(vo);
	%>


</body>
</html>