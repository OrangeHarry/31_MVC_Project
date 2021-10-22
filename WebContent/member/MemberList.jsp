<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	<h1>회원 목록</h1>
	<p><a href="add.do">신규 회원</a></p>
	<!-- memberList라는 객체를 데이터 저장소에서 꺼냄
	     foreach문에서 memberList에 담겨있는 내용을 member라는 변수로 담아서 하나씩 사용하겠다 -->
	<c:forEach var="member" items="${memberList }">
	${member.no },
	<a href="update.do?no=${member.no }">${member.name }</a>,
	${member.email },
	${member.createDate }
	<a href="delete.do?no=${member.no }">삭제</a><br>
	</c:forEach>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>