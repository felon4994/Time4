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
<html lang="ko-kr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>부트스트랩</title>
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
            
            .tableMK {
                width: 100%;
                border-top: 1px solid black;
                border-collapse: collapse;
            }
            
            .th, td {
                padding: 10px;
                border-bottom: 1px solid black;
                text-align: center;
            }
            </style>
    <!-- Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/kfonts2.css" rel="stylesheet">
    <style>
    h2 { margin: 20px 0}
    .tab-content {padding: 10px 0;}

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
    <h2>토글되는 탭 </h2>
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">홈</a></li>
      <li><a href="#tab1" data-toggle="tab">탭 1</a></li>
      <li><a href="#tab2" data-toggle="tab">탭 2</a></li>
      <li><a href="#tab3" data-toggle="tab">탭 3</a></li>
    </ul>
   
  <div class="tab-content">
    <div class="tab-pane active" id="home">
      <h3>홈 </h3>
      <table class="tableMK">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
				</tr>
				<tr>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
				</tr>
				<tr>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
				</tr>
            </tbody>
        </table>
    </div>
    <div class="tab-pane" id="tab1">
      <h3>탭 1</h3>
      <table class="tableMK">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>가</td>
					<td>가</td>
					<td>가</td>
					<td>가</td>
					<td>가</td>
				</tr>
				<tr>
					<td>나</td>
					<td>나</td>
					<td>나</td>
					<td>나</td>
					<td>나</td>
				</tr>
				<tr>
					<td>다</td>
                    <td>다</td>
                    <td>다</td>
                    <td>다</td>
                    <td>다</td>
				</tr>
				<tr>
                    <td>라</td>
                    <td>라</td>
                    <td>라</td>
                    <td>라</td>
                    <td>라</td>
				</tr>
				<tr>
                    <td>마</td>
                    <td>마</td>
                    <td>마</td>
                    <td>마</td>
                    <td>마</td>
				</tr>
            </tbody>
        </table>
    </div>

    <div class="tab-pane" id="tab2">
      <h3>탭 2</h3>
      <table class="tableMK">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
				</tr>
				<tr>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
				</tr>
				<tr>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
				</tr>
            </tbody>
        </table>
    </div>

    <div class="tab-pane" id="tab3">
      <h3>탭 3</h3>
      <table class="tableMK">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
					<td>3</td>
				</tr>
				<tr>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
					<td>4</td>
				</tr>
				<tr>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
					<td>5</td>
				</tr>
				
            </tbody>
        </table>
    </div>
</div>

</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/js/bootstrap.min.js"></script>


</body>
</html>