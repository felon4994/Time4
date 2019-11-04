<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<!-- jQuery -->
<link rel="stylesheet" href="<c:url value='/css/egovframework/jqueryui.css'/>"/>
<script src="<c:url value='http://code.jquery.com/jquery.js'/>"></script>
<script src="<c:url value='http://code.jquery.com/jqueryui.js'/>"></script>
<script src="<c:url value='http://code.jquery.com/select_load.js'/>"></script>

<title>전국관광명소</title>
<style type="text/css">
a {
	text-decoration: none
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

.parent {
	text-align: center;
}

.child {
	display: inline-block;
}

.content {
	float: left;
	width: 100%;
	height: 450px;
	padding: 1.5625%;
}

footer {
	clear: both;
	width: 100%;
	height: 100px;
}
</style>
<script type="text/javascript">
 $(document).ready(function(){ 
	$('#big_city_code').change(function(){
		$.ajax({
		 	url:"<c:url value='/autoSelectTour.do'/>",
		 	contentType: "application/x-www-form-urlennocoded; charset=UTF-8",
		 	data: {depth:2, big_city_code:encodeURIComponent($('#big_city_code option:selected').val())},	 
		 	dataType:'html',
			success: function(returnData, status){	
				console.log(returnData);
				$("#city_code").html(returnData);

		 	},complete: function(data){
		 	   //실패 했었도 완료가 되었을때..
		 	},error: function (request, status, error) {
		 	   alert("에러"); 
		 	}		 	
		});		
	}); 
	
	$('#city_code').change(function(){		
		//alert( $('#city_code option:selected').val() );		
		frm = document.detailForm;
		frm.action = "<c:url value='/BorderPage.do'/>";
        frm.submit();		
	}); 
 });
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
		<div class="container">       
   <header>
    <a href="/StartPage.do">
     <h1 style="font-size: 45px">전국관광명소</h1></a>
   </header>
   <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="text-align: center">
    <TBODY>
    <TR vAlign=center align=center>
    <TD><HEIGHT=30 width="12" border="0"></TD>
    <TD width="100%">
    <P align=left>&nbsp;<B><A href="/NoticeBorderList.do">공지사항</A></B></P></TD>
    <TD><HEIGHT=30 width="8" border="0"></TD></TR>
    <TR vAlign=top>
    <TD>&nbsp;</TD>
    <TD>
    <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 border-radius=15px>
    <TBODY>
    <TR>
    <TD bgColor=white>
    <MARQUEE onmouseover=this.stop() style="WIDTH: 100%; HEIGHT: 58px" onmouseout=this.start() scrollAmount=1 direction=up>
    <DIV style="PADDING-RIGHT: 0px; OVERFLOW-Y: auto; PADDING-LEFT: 0px; OVERFLOW-X: hidden; PADDING-BOTTOM: 3px; WIDTH: 100%; PADDING-TOP: 3px">
    <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
    <TR>
    <TD vAlign=top width="100%">
    <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
    <TR>
    <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt"></A>★9월은 늦캉스가 대세!★</B></A></A></SPAN></TD></TR>
    <TR>
        <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt"></A></B></A></A></SPAN></TD></TR>
    <TR>
    <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt">●가을은 역시 산~●</B></A></A></SPAN></TD></TR>
    <TR>
        <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt"></A></B></A></A></SPAN></TD></TR>
    <TR>
    <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt">■9/2~9/30 호캉스를 즐겨보세요■</B></A></A></SPAN></TD></TR>
    <TR>
        <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt"></A></B></A></A></SPAN></TD></TR>
    <TR>
    <TD height=20>&nbsp;<SPAN class=board style="FONT-SIZE: 9pt">▲이달의 추천관광지!▲</B></A></A></SPAN></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></MARQUEE></TD></TR></TBODY></TABLE></TD>
    <TD>&nbsp;</TD></TR></TBODY></TABLE>
   <body>
      	<br> 	
			<div id="editform">
				<form:form commandName="cityVO" id="detailForm" name="detailForm" style="text-align: center" action="borderPage.jsp" method="get">
					<table>
						<tr>
							<td style="font-size: 20px" >지역선택 :<div id="test"></div></td>
							<td>
								<form:select class="form-control" path="big_city_code" multiple="multiple" size="18" name="bigCityName">
									<option value="">1차 분류.</option>
									<c:forEach var="result" items="${resultList}" varStatus="status">
										<option value="${result.bigCityCode}">${result.bigCityName}</option>
									</c:forEach>
								</form:select>		 
							</td>
							<td>
								<form:select class="form-control" path="city_code" multiple="multiple" size="18" name="cityName">
									<option type="submit" value="">2차 분류.</option>
								</form:select>
							</td>							
						</tr>
					</table>					
				</form:form>
			</div>
			<br>
			<hr>
			<br>
			<footer>
			<div class="btn-group">
			       <button type="button" class="btn btn-default" onclick="location.href='/NoticeBorderList.do'">공지사항 </button>
			</div>
			<div class="btn-group">
			       <button type="button" class="btn btn-default" onclick="location.href='/UserBorderList.do'">자유게시판 </button>
			</div>
			<div class="btn-group">
			       <button type="button" class="btn btn-default"  onclick="location.href='/QandaBorderList.do'">Q&A </button>
    			</div>
			</footer>
		</body>
	</div>
</html>