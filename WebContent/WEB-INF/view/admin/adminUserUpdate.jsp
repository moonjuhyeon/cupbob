<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/include/head.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/include/naviBarAndasideBar.jsp"%>
   
  	<section id="main-content"> <section class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 회원 정보 수정
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i><a href="#">메인 화면</a></li>
				<li><i class="icon_document_alt"><a href="#"></i>회원 관리</li></a>
				<li><i class="fa fa-files-o"></i>회원 정보 수정</li>
			</ol>
		</div>
	</div> 
   	<!-- 회원수정 폼 시작-->
	<div class="row">
		<div class="col-lg-12">
			<section class="panel"> <header class="panel-heading"> 회원 정보 수정 </header>
			<div class="panel-body">
				<div class="form">
					<form class="form-validate form-horizontal " id="register_form" method="get" action="">
						<div class="form-group ">
							<label for="fullname" class="control-label col-lg-2">성명 <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class=" form-control" id="cname" name="fullname" type="text" placeholder="회원 이름" disabled/>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">Email <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="email" type="email" placeholder="회원이메일"disabled/>
							</div>
						</div>

						<div class="form-group ">
							<label for="password" class="control-label col-lg-2">비밀번호 <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요."/>
							</div>
						</div>
						<div class="form-group ">
							<label for="confirm_password" class="control-label col-lg-2">비밀번호 재확인<span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="confirm_password" name="confirm_password" type="password" placeholder="비밀번호를 다시 입력해주세요."/>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="gender" class="control-label col-lg-2">성별 <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class=" form-control" id="gender" name="gender" type="text" placeholder="회원 성별" disabled/>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">생년월일 <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="username" name="username" type="text" placeholder="회원 생년월일" disabled/>
							</div>
						</div>
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">연락처 <span class="required">*</span>
							</label>
							<div class="col-lg-10">
								<input class="form-control " id="phone" name="phone" type="text" placeholder="연락처를 입력해주세요. ex)01012345678" />
							</div>
						</div>


						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
							<div style = float:right>
							
								<button class="btn btn-primary" type="submit">수정</button>
								<button class="btn btn-default" type="button">취소</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			</section>
			
		</div>
	</div>
				</section>
				<!-- 회원수정 폼 끝 -->
   
   
   </section></section>
    <%@include file="/include/bottomJavaScript.jsp"%>
</body>
</html>