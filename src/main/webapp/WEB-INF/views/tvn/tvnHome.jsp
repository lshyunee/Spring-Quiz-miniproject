<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>
<section class="py-5">
	<div class="container px-5 my-5">
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-8 col-xl-6">
				<div class="text-center">
					<h2 class="fw-bolder">Select a game</h2>
					<p></p>
				</div>
			</div>
		</div>
		<div class="row gx-5">
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img id="proverb" class="card-img-top"
						src="/resources/image/proverb.png" alt="...">
					<div class="card-body p-4">
						<h5 class="card-title mb-3">☞ 속담 이어말하기</h5>
						<p class="card-text mb-0">
							<br> -10문제<br> 
							<br> -제한 시간 10초 안에 정답 입력<br>
							 <br> -띄어쓰기 정확하게 입력 할 것<br> 
							 <br> -틀리면 게임 끝
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img id="image" class="card-img-top"
						src="/resources/image/imagemain.jpg" alt="...">
					<div class="card-body p-4">
						<h5 class="card-title mb-3">☞ 인물 퀴즈</h5>
						<p class="card-text mb-0">
							<br> -10문제<br> 
							<br> -제한 시간 10초 안에 정답 입력<br>
							 <br> -가명 쓰는 연예인은 가명으로 입력<br> 
							 <br> -띄어쓰기 정확하게 입력 할 것<br> 
							 <br> -틀리면 게임 끝
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img id="newwords" class="card-img-top"
						src="/resources/image/mz.jpg" alt="...">
					<div class="card-body p-4">
						<h5 class="card-title mb-3">☞ 신조어 퀴즈</h5>
						<p class="card-text mb-0">
							<br> -10문제<br> 
							<br> -제한 시간 10초 안에 정답 입력<br>
							 <br> -띄어쓰기 정확하게 입력 할 것<br> 
							 <br> -틀리면 게임 끝
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Call to action-->
	</div>
</section>
<script type="text/javascript">
	$("#proverb").click(function() {
		self.location = "/tvn/proverb";
	})
	$("#image").click(function() {
		self.location = "/tvn/image";
	})
	$("#newwords").click(function() {
		self.location = "/tvn/newWords";
	})
</script>
<%@ include file="../includes/footer.jsp"%>