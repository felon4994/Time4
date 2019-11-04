<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
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
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
<link href="/css/egovframework/bootstrap.min.css" rel="stylesheet">
<link href="/css/egovframework/kfonts2.css" rel="stylesheet" --%>

<script type="text/javaScript" language="javascript" defer="defer">
		
		/* 글 수정 화면 function  */
		function fn_egov_select(tour_code) {
			document.listForm.selectedTour_code.value = tour_code;
			document.listForm.action = "<c:url value='/updateRegistrationBorderView.do'/>";
			document.listForm.submit();
		} 

		/* 글 등록 화면 function */
		function fn_egov_addView() {
			document.listForm.action = "<c:url value='/addRegistrationBorderView.do'/>";
			document.listForm.submit();
		}
		
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/RegistrationBorderList.do'/>";
           	document.listForm.submit();
        }
	 
    	/* pagination 페이지 링크 function  */
    	function fn_egov_link_page(pageNo) {
    		document.listForm.pageIndex.value = pageNo;
    		document.listForm.action = "<c:url value='/RegistrationBorderList.do'/>";
    		document.listForm.submit();
    	}
</script>
<!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <style>
      @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
      header{ height: 120px; background-color: rgba(125, 211, 242,0.5); border-radius: 15px; padding: 10px; margin:10px 0;font-family: 'Nanum Gothic', sans-serif;  text-align: center;}
      footer {font-family: 'Nanum Gothic', sans-serif;  text-align: center;}
      ul.nav { background-color:rgba(201, 201, 201,.5); padding: 10px; border-radius: 10px; }
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
  <div class="container">       
   <header>
    <a href="/StartPage.do">
     <h1 style="font-size: 45px">전국관광명소</h1></a>
   </header>
    <br>
<form:form commandName="searchVO" id="listForm" name="listForm"
		method="post">		
<input type="hidden" name="selectedTour_code" />
<div class="tab-content">
    <div class="tab-pane fade in active" id="home"> 
           <table class="table">
			<thead>
				<tr> 
					<th>이름</th>
					
					<th>주소</th>
					
					<th>전화번호</th>

				</tr>
			</thead>
				  <c:forEach var="result" items="${resultList}" varStatus="status">
           			<tr>
           				<td  class="listtd">
           					<a href="javascript:fn_egov_select('<c:out value="${result.tourCode}"/>')"><c:out value="${result.tourName}"/></a>
           				</td>
           				<td  class="listtd"><c:out value="${result.tourAdd}"/>&nbsp;</td>
           				<td  class="listtd"><c:out value="${result.tourTell}"/>&nbsp;</td>
           			</tr>
       			</c:forEach>															
			</tbody>
		</table>
		</div>
		</div>
		<div id="paging" style="text-align: center">
        	<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        	<form:hidden path="pageIndex" />
        </div>
	<div class="form-group" style="text-align: right">     
    	<button type="button" class="btn btn-default" onclick="location.href='/addRegistrationBorderView.do'"> 등록 </button>
	</div> 
	<div class="form-group" style ="text-align : center">
		<form:select path="searchCondition" class="selectpicker">
  			<form:option value="1">관광지 이름</form:option>
  			<form:option value="0">관광지 주소</form:option>
		</form:select>
		<form:input path="searchKeyword" class="form-group" placeholder="검색 키워드를 입력하세요" style="width: 50%;" />
			<button class="btn btn-default" type="button" onclick="location.href='javascript:fn_egov_selectList();'">검색</button>
  		</div>
	</form:form>
</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all c	ompiled plugins (below), or include individual files as needed -->
    <script src="/js/egovframework/bootstrap.min.js"></script>
</body>

</html>