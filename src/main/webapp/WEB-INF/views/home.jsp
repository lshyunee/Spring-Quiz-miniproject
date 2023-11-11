<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./includes/header.jsp"%>
<main class="flex-shrink-0">
	<!-- Header-->
	<header class="bg-light py-5">
		<div class="container px-5">
			<div class="row gx-5 align-items-center justify-content-center">
				<div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
					<img class="img-fluid rounded-3 my-5"
						src="/resources/image/main.webp" alt="..." />
				</div>
			</div>
		</div>
	</header>
	<!-- Blog preview section-->
	<section class="py-5">
		<div class="container px-5 my-5">
			<div class="row gx-5">
				<div class="col-lg-6 mb-5" id="tvn">
					<div class="card h-100 shadow border-0">
						<img class="card-img-top" src="/resources/image/tvn.jpg" alt="..." />
						<div class="card-body p-4">
							<h5 class="card-title mb-3">
								<b>신서유기</b>
							</h5>
							<p class="card-text mb-0">
								○ 속담 이어말하기<br> ○ 인물 퀴즈<br> ○ 신조어 퀴즈
							</p>
						</div>
						<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
							<div class="d-flex align-items-end justify-content-between">
								<div class="d-flex align-items-center">
									<img class="rounded-circle me-3"
										src="/resources/image/tvnlog.png" alt="..." width="40px"
										height="40px" />
									<div class="small">
										<div class="fw-bold">TVN</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6 mb-5" id="sbs">
					<div class="card h-100 shadow border-0">
						<img class="card-img-top" src="/resources/image/sbs.jpg" alt="..." />
						<div class="card-body p-4">
						<h5 class="card-title mb-3"><b>런닝맨</b></h5>
							<p class="card-text mb-0">
							○ 상식 퀴즈<br> ○ 사자성어<br> ○ 단위 퀴즈</p>
						</div>
						<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
							<div class="d-flex align-items-end justify-content-between">
								<div class="d-flex align-items-center">
									<img class="rounded-circle me-3"
										src="/resources/image/sbslog.png" alt="..." />
									<div class="small">
										<div class="fw-bold">SBS</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
</main>
<script type="text/javascript">
	$("#tvn").click(function() {
		self.location = "/tvn/tvnHome";
	})
	$("#sbs").click(function() {
		self.location = "/sbs/sbsHome";
	})
</script>
<%@ include file="./includes/footer.jsp"%>
