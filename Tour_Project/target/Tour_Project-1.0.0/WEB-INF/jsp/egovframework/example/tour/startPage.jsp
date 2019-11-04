<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	/**
	* @Class Name : egovSampleRegister.jsp
	* @Description : Sample Register 화면
	* @Modification Information
	*
	*   수정일         수정자                   수정내용
	*  -------    --------    ---------------------------
	*  2009.02.01            최초 생성
	*
	* author 실행환경 개발팀
	* since 2009.02.01
	*
	* Copyright (C) 2009 by MOPAS  All right reserved.
	*/
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>전국관광명소</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
a {
	text-decoration: none
}

#wrapper {
	width: 96%;
	margin: 0 auto;
}

header { /* 헤더 */
	width: 100%;
	height: 120px;
}

.header-text {
	font-size: 50px;
	color: white;
	text-align: center;
	line-height: 120px;
}

.content { /* 본문 */
	float: left;
	width: 44%;
	height: 400px;
	text-align: center;
	line-height: 120px;
}

.right-side { /* 사이드 바 */
	float: right;
	text-align: center;
	line-height: 120px;
	width: 46%;
	height: 400px;
}

body {
	background: url(images/egovframework/cmmn/경복궁.jpg) no-repeat fixed;
	background-size: cover;
}
</style>
</head>

<body>
	<div id="wrapper">
		<header>
			<a href="/StartPage.do">
				<h1 class="header-text">전국관광명소</h1>
			</a>
		</header>
		<section class="content">
			<br> <br> <a href="/NonUserPage.do"> <img
				src="images/egovframework/cmmn/비회원버튼.png" height="150" width="150"
				alt="비회원버튼">
			</a>
		</section>
		<aside class="right-side">
			<br> <br> <a href="/LoginPage.do"> <img
				src="images/egovframework/cmmn/회원버튼.png" height="150" width="150"
				alt="회원버튼">
			</a>
		</aside>
	</div>
</body>
</html>