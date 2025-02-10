<%@page import="vo.FanItemVO"%>
<%@page import="dao.FanItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<h3>${vo.title }</h3>

</body>
</html>