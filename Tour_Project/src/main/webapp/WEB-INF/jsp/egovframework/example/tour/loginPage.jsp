<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
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
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>전국관광명소</title>
    <script type="text/javascript">
	function fn_validate(){
		var account = document.account;
		var id = account.id.value;
		var password = account.password.value;
		if(id == ""){
			alert("아이디를 입력하세요");
			account.id.focus();
			return false;
		}
		 
		if(password == ""){
			alert("비밀번호를 입력하세요");
			account.password.focus();
			return false;
		}
		 
		account.action = "loginProcess.do";
		account.submit();
		
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
   <br>
   <br>
   <form name="account">
   <div class="input-group">
    	<span class="input-group-addon"> <span class="glyphicon glyphicon-user"> </span> </span>
    	<input type="text" name = "id" class="form-control" placeholder="아이디">
	</div> 
 	<br>
 	<br>
 	<br>
	<div class="input-group">
    	<span class="input-group-addon">  <span class="glyphicon glyphicon-lock"></span> </span>
    	<input type="password" name = "password" class="form-control" placeholder="암 호">
	</div>
	<br>
	<br>
	<br>

	<div style="text-align: center">
		<button type="button" class="btn btn-default" onclick="location.href='/JoinPage.do'">회원가입</button>
		<button type="submit" class="btn btn-default" onclick="fn_validate()">로그인</button>
	</div> 
	<br>
	</form>
  </div>
</body>
</html>