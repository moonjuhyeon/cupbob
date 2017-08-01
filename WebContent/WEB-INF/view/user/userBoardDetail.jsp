<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.cupbob.dto.User_boardDTO"%>
<%@page import="com.cupbob.dto.Comment_infoDTO"%>
<%@ page import="java.util.List"%>
<%@ page import="com.cupbob.util.CmmUtil"%>

<%
	User_boardDTO bDTO = (User_boardDTO) request.getAttribute("bDTO");
	List<Comment_infoDTO> cList = (List<Comment_infoDTO>) request.getAttribute("cList");
	String contents = bDTO.getContents();
	bDTO.setContents(contents);
%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap core CSS -->
<link href="userBootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Bootstrap theme -->
<link href="userBootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="userBootstrap/css/turtle.min.css" />
<link rel="stylesheet" href="userBootstrap/css/nav.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<title>Insert title here</title>

</head>
<body>
	<%@include file="/include/nav.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div id="recommMenu">

		<div class="container-fluid">
			<div class="row">
				<!--글 제목-->
				<h2 class="title"><%=CmmUtil.nvl(bDTO.getTitle()) %></h2>
				<!--글쓴이 및 글정보-->
				<h7 class="boderdetail"><%=CmmUtil.nvl(bDTO.getUser_name()) %> | <%=CmmUtil.nvl(bDTO.getReg_dt()) %> | 조회수 <%=CmmUtil.nvl(bDTO.getView_cnt()) %></h7>
			</div>
			<hr>
			<div class="row">
				<div class="bodercontent">
					<!--글 내용-->
					<%=CmmUtil.nvl(bDTO.getContents()) %>
				</div>
				<button class="saButton0" onclick="location.href='userBoardDelete.do?bnum=<%=CmmUtil.nvl(bDTO.getPost_no())%>'">삭제</button>
				<button class="saButton1">수정</button>
				<br />
			</div>
			<hr class="blackHr">

		</div>

		<ul class="list-group list-group-none-line">

			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<p class="inline0">댓글 5</p>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<p class="inline1">
						<a href="#" class="black">&#8635;새로고침</a>
					</p>
					<span class="inline2"> <a href="#" class="black">전체댓글보기&#x2771;</a>
					</span> <br> <br>
					<!--글 작성 input-->
					<div class="reTitle">
						<input type="text" class="nameFont" placeholder=" 댓글을 입력해주세요.">
						<button class="saButton3" >등록</button>
						<br> <br><br>
					</div>
					<!-------------->
				</div>
			</li>
			<!--댓글 내용-->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<h4 class="reName">문주현</h4>
					<div class="contentsInfo">
						<span>와 이런게 있었군요 너무 신기하네요 !</span><br />
						<h7 class="reDate">2017.05.15</h7>
						<button class="saButton2">답글</button>
					</div>
				</div> <br /> 
			</li>
			<!----------------------------------------------------------->
			<!--댓글의 답글 입력 input-->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<h4 class="reName">박수용</h4>
				</div>
				<div class="contentsInfo">
					<span>와 이런게 있었군요 너무 신기하네요 !</span><br />
					<h7 class="reDate">2017.05.15</h7>
				</div> <br /> <input type="text" class="nameFont1"
				placeholder=" 댓글의 답글을 입력하는 자리입니다.">
				<button class="saButton5">등록</button> <br /> <br /> <br /><br />
			</li>
			<!----------------------------------------------------------->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<h4 class="reName">최한용</h4>

					<div class="contentsInfo">
						<span>d와 이런게 있었군요 너무 신기하네요 !</span><br />
						<h7 class="reDate">2017.05.15</h7>
						<button class="saButton2">답글</button>
					</div>
				</div> <br /> <br />
			</li>
			<!--댓글의 답글 리스트-->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<span>&#8627;</span>
					<h4 class="reName">문주현</h4>
				</div>
				<div class="contentsInfo">
					<span class="reContent">댓글의 답글을 달아보았습니다.</span><br />
					<h7 class="reDate1">2017.05.15</h7>
				</div> <br />
			</li>
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<span>&#8627;</span>
					<h4 class="reName">박수용</h4>
				</div>
				<div class="contentsInfo">
					<span class="reContent">댓글의 답글을 또 달아보았습니다.</span><br />
					<h7 class="reDate1">2017.05.15</h7>
				</div> <br /> <br />
			</li>
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<span>&#8627;</span>
					<h4 class="reName">김상훈</h4>

					<div class="contentsInfo">
						<span class="reContent">댓글의 답글을 또또 달아보았습니다.</span><br />
						<h7 class="reDate1">2017.05.15</h7>
						<button class="saButton2">수정</button>
					</div>
				</div> <br /> <br />
			</li>
			<!----------------------------------------------------------->
			<!--댓글 작성자 리스트-->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<h4 class="reName">김상훈</h4>

					<div class="contentsInfo">
						<span>와 이런게 있었군요 너무 신기하네요 !</span><br />
						<h7 class="reDate">2017.05.15</h7>
						<button class="saButton2">수정</button>
						<button class="saButton2">삭제</button>
						<button class="saButton2">답글</button>
					</div>
				</div> <br /> <br />
			</li>
			<!----------------------------------------------------------->
			<!--댓글 수정 input-->
			<li class="list-group-item list-none-line">
				<div class="contentsArea">
					<h4 class="reName">김상훈</h4>
					<br /> <input type="text" class="nameFont1"
						placeholder=" 수정 내용을 입력하는 자리입니다.">
					<button class="saButton5">수정</button>
				</div> <br /> <br /> <br />
			</li>
			<!----------------------------------------------------------->
      </ul>
      <div align=center>
         <button class="saButton4" onclick="location.href='userBoardList.do'">목 록</button>
      </div>
   </div>

   <br>
   <%@include file="/include/footer.jsp"%>
</body>
</html>