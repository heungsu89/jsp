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
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwe");
		
		if(id.equals("love") && pwd.equals("1234")){
			response.sendRedirect("ResponseWelcom.jsp");
		}else{
			request.getRequestDispatcher("ResponsMain.jsp?loginErr=1").forward(request, response);
		}
		
		// reuest 내잘 객체를 통해, 로그인 페이지(ResponsMain.jsp)로 Foward(전달) 된다.
		// 포워드는 <<전달>> - 제어의 흐름을 넘겨준다
	
	%>
</body>
</html>