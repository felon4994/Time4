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
	width: 100%;
	margin: 0 auto;
}

header { /* 헤더 */
	width: 100%;
	height: 120px;
	background-color: bisque;
}

.header-text {
	font-size: 50px;
	color: black;
	text-align: center;
	line-height: 120px;
}

.content { /* 본문 */
	float: left;
	width: 60%;
	height: 300px;
	text-align: left;
	line-height: 120px;
}

li {
	list-style: none;
	margin: 5px;
	border: 2px solid gainsboro;
}

table {
	margin-top: 5px;
	width: 100%;
}

td {
	font-size: 25px;
	font: bold;
}

table, th {
	border: 1px solid gainsboro;
}

a {
	text-decoration: none
}

#wrapper {
	width: 100%;
	margin: 0 auto;
}

header { /* 헤더 */
	width: 100%;
	height: 120px;
	background-color: bisque;
}

.header-text {
	font-size: 50px;
	color: black;
	text-align: center;
	line-height: 120px;
}

.content { /* 본문 */
	float: left;
	width: 60%;
	height: 300px;
	text-align: left;
	line-height: 120px;
}

li {
	list-style: none;
	margin: 5px;
	border: 2px solid gainsboro;
}

table {
	margin-top: 5px;
	width: 100%;
}

td {
	font-size: 25px;
	font: bold;
}

table, th {
	border: 2px solid gainsboro;
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
		<h1
			style="position: relative; margin-top: 5px; margin-bottom: 0px; padding-left: 20px; border: 2px solid gainsboro;">안녕하세요
			ㅇㅇ구님</h1>
		<h1
			style="position: relative; margin-top: 5px; margin-bottom: 5px; padding-left: 20px; border: 2px solid gainsboro;">관광지
			등록</h1>

		<table>
			<thead>
				<tr>
					<td colspan="2" style="font-size: 35px;">관광지 정보입력</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>관광지 이름</td>
					<td><input></input></td>
				</tr>
				<tr>
					<td>관광지 주소</td>
					<td><input></input></td>

				</tr>
				<tr>
					<td>관광지 주소</td>
					<td><input></input></td>

				</tr>
				<tr>
					<td>관광지 설명</td>
					<td><input></input></td>
				</tr>
			</tbody>
		</table>
		<table>
			<thead>
				<tr>
					<td colspan="2" style="font-size: 25">사진첨부</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2"><a href="http://www.naver.com"> <class
								="header-text" style="font-size: 37px; color: black; text-align:center;">사진첨부하기<br>
							(최대10장)</class>
					</a></td>
				</tr>
			</tbody>
		</table>
		<a href="http://www.naver.com">
			<h1
				style="position: relative; margin-top: 5px; margin-bottom: 5px; padding-left: 15px; color: black; border: 2px solid gainsboro;">등록하기</h1>
		</a>
	</div>
	<div id="wrapper">
		<header>
			<a href="http://www.naver.com">
				<h1 class="header-text">전국관광명소</h1>
			</a>
		</header>
		<h1
			style="position: relative; margin-top: 5px; margin-bottom: 0px; padding-left: 20px; border: 2px solid gainsboro;">안녕하세요
			ㅇㅇ구님</h1>
		<h1
			style="position: relative; margin-top: 5px; margin-bottom: 5px; padding-left: 20px; border: 2px solid gainsboro;">관광지
			등록</h1>
		<table>
			<thead>
				<tr>
					<td colspan="2" style="font-size: 35px;">관광지 정보입력</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>관광지 이름</td>
					<td><input></input></td>
				</tr>
				<tr>
					<td>관광지 주소</td>
					<td><input></input></td>

				</tr>
				<tr>
					<td>전화번호</td>
					<td><input></input></td>

				</tr>
				<tr>
					<td>관광지 설명</td>
					<td><input></input></td>
				</tr>
			</tbody>
		</table>
		<table>
			<thead>
				<tr>
					<td colspan="2" style="font-size: 25">사진첨부</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2"><a href="http://www.naver.com"> <class
								="header-text" style="font-size: 37px; color: black; text-align:center;">사진첨부하기<br>
							(최대10장)</class>
					</a></td>
				</tr>
			</tbody>
		</table>
		<a href="http://www.naver.com">
			<h1
				style="position: relative; margin-top: 5px; margin-bottom: 5px; padding-left: 15px; color: black; border: 2px solid gainsboro;">등록하기</h1>
		</a>
	</div>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input></input></td>

	</tr>
	<tr>
		<td>관광지 설명</td>
		<td><input></input></td>
	</tr>
	</tbody>
	</table>
	<table>
		<thead>
			<tr>
				<td colspan="2" style="font-size: 25">사진첨부</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="2"><a href="http://www.naver.com"> <class
							="header-text" style="font-size: 37px; color: black; text-align:center; ">사진첨부하기<br>
						(최대10장)</class>
				</a></td>
			</tr>
		</tbody>
	</table>
	<a href="http://www.naver.com">
		<h1
			style="text-align: center; margin-top: 5px; margin-bottom: 5px; padding-left: 15px; color: black; border: 2px solid gainsboro;">등록하기</h1>
	</a>
	<a href="http://www.naver.com">
		<h1
			style="text-align: center; margin-top: 5px; margin-bottom: 5px; padding-left: 15px; color: black; border: 2px solid gainsboro;">수정하기</h1>
	</a>
	<a href="http://www.naver.com">
		<h1
			style="text-align: center; margin-top: 5px; margin-bottom: 5px; padding-left: 15px; color: black; border: 2px solid gainsboro;">삭제하기</h1>
	</a>
	</div>
</body>
</html>