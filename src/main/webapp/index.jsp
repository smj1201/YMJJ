<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}"/>
	
	<h3> YMJJ </h3>
	
	<h3>회원 관리</h3>
	
	<c:if test="${id==null}">
		<a href="${root}/member/join.do">회원가입</a>&nbsp;&nbsp;
		<a href="${root}/member/login.do">로그인</a>&nbsp;&nbsp;
		<a href="${root}/member/Mypage-Acc.do">마이페이지-ACC</a>&nbsp;&nbsp;
		<a href="${root}/member/Mypage-Com.do">마이페이지-COM</a>&nbsp;&nbsp;
		<a href="${root}/member/Mypage-M.do">마이페이지-M</a>&nbsp;&nbsp;
		<a href="${root}/member/Mypage-M-D.do">마이페이지-M-D</a>
	</c:if>
	
	<c:if test="${id !=null}">
		<a href="${root}/member/logout.do">로그아웃</a>
		<a href="${root}/member/update.do">회원수정</a>
		<a href="${root}/member/delete.do">회원탈퇴</a>
		
		<c:if test="${memberLevel=='MA'}">
			<h3>관리자 메뉴</h3>
			<a href="">회원목록</a>
		</c:if>
	</c:if>
	
	<h3>About JEJU</h3>
	
	<c:if test="${id==null}">
		<a href="${root}/aboutjeju/introduction.do">소개</a>&nbsp;&nbsp;
		<a href="${root}/aboutjeju/location.do">위치</a>&nbsp;&nbsp;
		<a href="${root}/aboutjeju/speciality.do">특별한곳</a>&nbsp;&nbsp;
		<a href="${root}/aboutjeju/activities.do">액티비티</a>
	</c:if>
	
	<h3>Restaurant View</h3>
	<a href="${root}/restaurant/main.do">레스토랑 메인</a>
	<a href="${root}/restaurant/write.do">레스토랑 추가</a>
	<a href="${root}/restaurant/update.do">레스토랑 수정</a>
	<a href="${root}/restaurant/introduction.do">레스토랑</a>
	
	<h3>Community</h3>
	<a href="${root}/community/EventList.do">이벤트</a>
	<a href="${root}/community/Notice.do">공지사항</a>
	<a href="${root}/community/ReviewList.do">리뷰게시판</a>
	
	<h3>기타</h3>
	<a href="${root}/other/map.do">맵</a>
	<a href="${root}/other/menu.do">메뉴</a>
</body>
</html>