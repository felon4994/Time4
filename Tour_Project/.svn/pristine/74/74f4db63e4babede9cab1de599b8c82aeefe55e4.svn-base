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
<link type="text/css" rel="stylesheet" href="<c:url value='/css/sample.css'/>"/>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/kfonts2.css" rel="stylesheet">

<script type="text/javaScript" language="javascript" defer="defer">
		
		/* 글 수정 화면 function  */
		function fn_egov_select(noticeno) {
			document.listForm.selectedNoticeNo.value = noticeno;
			document.listForm.action = "<c:url value='/updateNoticeBorderView.do'/>";
			document.listForm.submit();
		} 

		/* 글 등록 화면 function */
		function fn_egov_addView() {
			document.listForm.action = "<c:url value='/addNoticeBorderView.do'/>";
			document.listForm.submit();
		}
		
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/NoticeBorderList.do'/>";
           	document.listForm.submit();
        }
	 
    	/* pagination 페이지 링크 function  */
    	function fn_egov_link_page(pageNo) {
    		document.listForm.pageIndex.value = pageNo;
    		document.listForm.action = "<c:url value='/NoticeBorderList.do'/>";
    		document.listForm.submit();
    	}
    
</script>

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
.tab-content {padding: 10px 0;}

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
	text-align: center;
	line-height: 120px;
}

.tableMK {
	width: 100%;
	border-top: 1px solid gainsboro;
	border-collapse: collapse;
	text-align: center;
}

.th, td {
	padding: 10px;
	border-bottom: 1px solid gainsboro;
	text-align: left;
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
		</div>
		<!--
<div class="container">
<ul class="nav nav-tabs">
      <li><a href="/UserBorderList.do" data-toggle="tab">게시판</a></li>
      <li><a href="#tab2" data-toggle="tab">공지사항</a></li>
      <li><a href="#tab3" data-toggle="tab">Q  &A</a></li>
    </ul>
    
    <div class="tab-content">
    <div class="tab-pane active" id="/UserBorderList.do">
    -->
    
<form:form commandName="searchVO" id="listForm" name="listForm"
		method="post">		
<input type="hidden" name="selectedNoticeNo" />
	
 <div class="btn-group">
         <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 목록  <span class="caret"></span>
         </button>
       <ul class="dropdown-menu" role="menu">
        <li><a href="/UserBorderList.do">자유 게시판</a></li>
        <li><a href="/NoticeBorderList.do">공지사항</a></li>
        <li><a href="/QandaBorderList.do">Q & A</a></li>
        <li class="divider"></li>
		</ul>
		</div>
		
		
		<table class="tableMK">
			<thead>
				<tr>
					<th>번호</th>
					
					<th>공지내용</th>
					
					<th>작성자</th>
					
					<th>날짜</th>

				</tr>
			</thead>
			
			<tbody>
				  <c:forEach var="result" items="${resultList}" varStatus="status">
           			<tr>
           			<%-- 	<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td> --%>
           				<td  class="listtd">
           				<a href="javascript:fn_egov_select('<c:out value="${result.noticeno}"/>')"><c:out value="${result.noticeno}"/></a>
           				</td>
           				<td  class="listtd"><c:out value="${result.noticecontents}"/>&nbsp;</td>
           				<td  class="listtd"><c:out value="${result.noticename}"/>&nbsp;</td>
           				<td  class="listtd"><c:out value="${result.todate}"/>&nbsp;</td>
           			</tr>
       			</c:forEach>															
			</tbody>
		</table>
	<p style="text-align: center">
      <button class="btn_1" onclick="fn_egov_addView()">공지 등록하기</button>
	</p>
		<br>
 

<div class="input-group" style ="text-align : center">
  <input type="text" class="form-control" placeholder="검색 키워드를 입력하세요">
  <span class="input-group-btn">
	<button class="btn btn-secondary" type="button">검색</button>
  </span>
  </div>
 
    <!--  <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                여기를 클릭해 보세요. #1 
              </a>
          
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
                동호
            </div>
          </div>
        </div>
         -->
		<!--  
				  <p style="text-align: center">
		            <button class="btn_1" onclick="location.href='/ListPage.do'">이전 페이지</button>
		            <button class="btn_2" onclick="location.href='/ListPage.do'">다음 페이지</button>
		         </p>
		-->
 </form:form>
 <!--
	  <ul class="pagination" style ="text-align : center">
    <li><a href="#">«</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">6</a></li>
    <li><a href="#">7</a></li>
    <li><a href="#">8</a></li>
    <li><a href="#">9</a></li>
    <li><a href="#">»</a></li>
   </ul>
-->
	</div>
</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all c	ompiled plugins (below), or include individual files as needed -->
    <script src="/js/bootstrap.min.js"></script>
</body>

</html>