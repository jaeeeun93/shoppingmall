<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/include/head.jsp"%>

<link rel="stylesheet" href="/css/login.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">

	<nav class="cantainer"><!-- 전체감싸는 -->                          
		
		<div class="logo2">
			<div class="left">
				<img src="/img/16.jpg" style="height:748px;">
			</div>
			<div class="logo_img">
				<img src="/img/11.png" style="width:200px;">
			</div>
			<div class="write">
				<p>
				<span style="font-size:60px;"><b>Welcome Back,</b></span><br>
				sign in to continue access pages.
				</p>
			</div>
			
			<form action="login_ok.do" method="post">
				<div class="right">
					<div class="sign">
						<span style="font-size:50;"><b>Sign In</b></span>
					</div>
					<div class="id">
						<input name="id" placeholder="Id" >
					</div>
					<div class="pass">
						<input type="password" name="pass" placeholder="Password">
					</div>
					<div class="submit">
						<input type="submit" value="로그인" onclick="";>
					</div>
					<div class="search">
						<div>
							<a href="idSearch.jsp"><input type="button" value="아이디찾기" style="width:110px"></a>
						</div>
						<div style="width:36px">
						</div>
						<div>
							<a href="passSearch.jsp"><input type="button" value="비밀번호찾기" style="width:110px;"></a>
						</div>
						<div style="width:36px">
						</div>
						<div>
							<a href ="/member/join.jsp"><input type="button" value="회원가입" style="width:110px;"></a>
						</div>
					</div>
				</div>
			</form>
			
		</div>
	</nav>
 <%@include file="/include/foot.jsp"%>