<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../includes/header.jsp"%>
<main class="flex-shrink-0">
	<div class="py-5 bg-light">
		<div class="container px-5 my-5">
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-10 col-xl-7">
					<div class="text-center">
						<button type="button" id="start">Game Start</button>
						<div id="questionList">
							<div class="fs-4 mb-4 fst-italic" id="question">${unit.question}</div>
							<input type="hidden" name="correct" id="correct"
								value="${unit.answer}">
						</div>
						<div class="fs-3 fw-bold" id="resultanswer"></div>
						<button type='button' id='againBtn'>Restart</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="py-5">
		<div class="container px-5 my-5">
			<!-- Call to action-->
			<aside class="bg-light bg-gradient rounded-3 p-4 p-sm-5 mt-5">
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-10 col-xl-7">
						<div class="text-center">
							<div id="timer"></div>
							<div class="fs-3 fw-bold" id="result"></div>
						</div>
						<div class="ms-xl-0">
							<div class="input-group mb-auto">
								<input class="form-control" id="useranswer" type="text"
									name="useranswer" placeholder="answer">
								<button type="button" id="answerBtn"
									class="btn btn-outline-success">입력</button>
							</div>
						</div>
					</div>
				</div>
			</aside>
		</div>
	</section>
</main>
<script type="text/javascript">
	$(function() {

		$('#question').hide(); // 처음에 가리고
		$('#start').click(function() { // 버튼 클릭시
			$('#question').show(); // div가 보여지며
			$('#start').hide();
			playTimer = setTimeout(function() {
				$('#result').html("<p>Time out</p>").css("color", "red");
				$('#againBtn').show();
				$('#useranswer').attr("readonly", true);
			}, 6000);
		});

		var count = 0;
		$('#againBtn').hide();
		$('#answerBtn').click(
				function() {
					clearTimeout(playTimer);
					let useranswer = $('#useranswer').val();
					let correct = $('#correct').val();
					playTimer = setTimeout(function() {
						$('#result').html("<p>Time out</p>")
								.css("color", "red");
						$('#againBtn').show();
						$('#useranswer').attr("readonly", true);
					}, 6000);
					//console.log(correct);
					//console.log(useranswer);
					if (correct == useranswer) {
						$('#questionList').load(
								location.href + ' #questionList');
						$('#useranswer').val('');
						count++;
						if (count == 10) {
							clearTimeout(playTimer);
							$('#questionList').load(
									location.href + ' #result');
							$('#result').html("<p>모두 정답입니다!~</p>").css("color",
									"blue");
							$('#useranswer').attr("readonly", true);
							$('#againBtn').show();
						}
					} else {
						$('#result').html("<p>X</p>").css("color", "red");
						$('#resultanswer').html("<p>" + correct + "</p>").css(
								"color", "red");
						$('#useranswer').attr("readonly", true);
						$('#againBtn').show();
					}

				});

		$('#againBtn').click(function() {
			location.reload();
		})
	})
	var enter = document.getElementById("useranswer");
	enter.addEventListener("keyup", function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			document.getElementById("answerBtn").click();
		}
	});
</script>
<%@ include file="../includes/footer.jsp"%>