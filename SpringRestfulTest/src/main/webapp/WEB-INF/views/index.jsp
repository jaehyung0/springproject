<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"
	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
	crossorigin="anonymous"></script>
<script src="/resources/js/jquery.serializeObject.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
/* .container {
			width: 700px;
			text-align:left;
			float:left;
		}
		
		.list th, .list td {
			text-align: center;
		}
		.list th:nth-child(1) { width: 80px; }
		.list th:nth-child(2) { width: 80px; }
		.list th:nth-child(3) { width: 150px; }
		.list th:nth-child(4) { width: auto; }
		.list th:nth-child(5) { width: 80px; }
		.list th:nth-child(6) { width: 80px; }
		.list th:nth-child(7) { width: 80px; }
		
		.add {
			width: 400px;
		}
		.add th {
			width: 100px;
			text-align: center;
		}
		.add input[name='name'], .add input[name='age'] {
			width: 120px;
		}
		.add input[name='tel'] {
			width: 200px;
		} */
th, td {
	text-align: center;
}

.page-header {
	text-align: center;
}

.search {
	text-align: right;
	margin-bottom: 10px;
}

.search input {
	margin: 5px;
}

.add {
	width: 300px;
}

.add>th {
	width: 80px;
}

.add>td {
	width: 120px;
}

.fullcontaioner {
	width: 1400px;
}

.container {
	width: 850px;
	float: left;
	text-align: left;
	margin-left: 20px;
}

.container2 {
	width: 300px;
	float: left;
	margin-top: 200px;
	margin-left: 100px;
}

.glyphicon:hover {
	color: blue;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="index.html"> <span
					class="align-middle">PC방 관리자</span>
				</a>

				<ul class="sidebar-nav">
					<li class="sidebar-header">Pages</li>

					<li class="sidebar-item "><a class="sidebar-link"
						href="/spring/list"> <i class="align-middle"
							data-feather="sliders"></i> <span class="align-middle">전체보기</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/spring/memberlist"> <i class="align-middle"
							data-feather="user"></i> <span class="align-middle">회원관리</span>
					</a></li>
					<li class="sidebar-item active" style="font-size: 11px;"><a
						class="sidebar-link" href="/spring/memberlist"> &nbsp;&nbsp;<i
							class="align-middle" data-feather="corner-down-right"></i> <span
							class="align-middle">회원목록</span>
					</a></li>



					<li class="sidebar-item"><a class="sidebar-link"
						href="/spring2/pmain"> <i class="align-middle"
							data-feather="shopping-cart"></i> <span class="align-middle">상품관리</span>
					</a></li>


					<li id="accordionExample" class="sidebar-item"><a
						class="sidebar-link"> <i class="align-middle"
							data-feather="dollar-sign"></i> <span class="align-middle">매출관리</span>
					</a></li>

					<div id="collapseOne" style="display: none">
						<ul>
							<li class="sidebar-item"><a class="sidebar-link"
								href="/spring/slistmonth?month=1"> <i class="align-middle"
									data-feather="hash"></i> <span class="align-middle">매출
										조회</span>
							</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="/spring/salesadd"> <i class="align-middle" data-feather="hash"></i>
									<span class="align-middle">요금제 조회</span>
							</a></li>
							<!-- 				<li class="sidebar-item"> -->
							<!-- 					<a class="sidebar-link" href="slist"> -->
							<!-- 					 <i class="align-middle" data-feather="hash"></i> -->
							<!-- 					 <span class="align-middle">마감 정산</span> -->
							<!-- 					</a> -->
							<!-- 				</li> -->
						</ul>
					</div>

					<li class="sidebar-item"><a class="sidebar-link"
						href="pages-blank.html"> <i class="align-middle"
							data-feather="monitor"></i> <span class="align-middle">운영관리</span>
					</a>
			</div>
		</nav>
		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<!--사이드바 팝업-->
				<a class="sidebar-toggle js-sidebar-toggle"> <i
					class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse">
					<!-- <a href="">회원조회</a>&nbsp&nbsp&nbsp<a href="">회원통계</a> -->
					<ul class="navbar-nav navbar-align">

						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-bs-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#" data-bs-toggle="dropdown"> <img
								src="resources/image/avatar.jpg"
								class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span
								class="text-dark">관리자1</span>
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="pages-profile.html"><i
									class="align-middle me-1" data-feather="user"></i> Profile</a> <a
									class="dropdown-item" href="#"><i class="align-middle me-1"
									data-feather="pie-chart"></i> Analytics</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="index.html"><i
									class="align-middle me-1" data-feather="settings"></i> Settings
									& Privacy</a> <a class="dropdown-item" href="#"><i
									class="align-middle me-1" data-feather="help-circle"></i> Help
									Center</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Log out</a>
							</div></li>
					</ul>
				</div>
			</nav>


			<div class="fullcontainer">
				<div class="container">
					<h1 class="page-header">회원 정보</h1>
					<div class="search">
						<input type="text" class="form-control" placeholder="이름 검색"
							id="word" autocomplete="off"><span
							class="input-group-btn">
							<button class="btn btn-success" type="button"
								onclick="clearSearch();">초기화</button>
						</span>
					</div>
					<table class="table table-bordered list" id="membertable">
						<thead>
							<tr>
								<th style="width: 100px;">회원등급</th>
								<th style="width: 100px;">이름</th>
								<th style="width: 100px;">아이디</th>
								<th style="width: 100px;">비밀번호</th>
								<th style="width: 200px;">연락처</th>
								<th style="width: 100px;">나이</th>
								<th style="width: 100px;">성별</th>
								<th style="width: 100px;">수정/삭제</th>
							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach items="${list}" var="dto">
      	<tr>
      		<td>${dto.lv }</td>
      		<td>${dto.name}</td>
      		<td>${dto.id }</td>
      		<td>${dto.tel }</td>
      		<td>${dto.age }세</td>
      		<td><c:if test="${dto.gender eq 'm'}">남</c:if><c:if test="${dto.gender eq 'f'}">여</c:if></td>
      		<td><i class="align-middle" data-feather="edit"></i> / <i class="align-middle" data-feather="delete"></i></td>
      	</tr>
      	</c:forEach> --%>
						</tbody>
					</table>

				</div>

				<div class="container2">
					<form id="form1">
						<table class="table table-bordered add">
							<tr>
								<th>이름</th>
								<td><input type="text" name="member_name"
									class="form-control"></td>
							</tr>
							<tr>
								<th>나이</th>
								<td><input type="number" name="member_age"
									class="form-control"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text" name="member_id"
									class="form-control"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="text" name="member_pw"
									class="form-control"></td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><input type="tel" name="member_tel"
									class="form-control"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><select name="member_gender">
										<option value='m'>남</option>
										<option value='f'>여</option>
								</select></td>
							</tr>
							<tr>
								<th>회원등급</th>
								<td><select name="memberlv_seq">
										<option value='1'>Silver</option>
										<option value='2'>Gold</option>
										<option value='3'>VIP</option>
								</select></td>
							</tr>

						</table>
						<div>
							<input type="button" value="추가하기" class="btn btn-primary"
								id="btn">
						</div>
					</form>
				</div>
			</div>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/"
									target="_blank"><strong>AdminKit</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Support</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Help Center</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Privacy</a></li>
								<li class="list-inline-item"><a class="text-muted"
									href="https://adminkit.io/" target="_blank">Terms</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>

		</div>
	</div>







	<script>

		//목록 가져오기
		//1. 시작할 때 호출
		//2. 추가하기 > 호출
		//3. 수정하기 > 호출
		//4. 삭제하기 > 호출
		function load(word) {
			
			let url = 'http://localhost:8090/address';
			
			if (word != null && word != '') {
				url = url + '/' + word;
			}
			
			$.ajax({
				
				//request
				type: 'GET',
				url: url,
				
				//response
				dataType: 'json',
				success: function(list) {
					
					$('.list tbody').html('');//초기화
					
					$(list).each((index, item) => {
						
						let tr = '<tr><td>' + item.member_lv + '</td><td>' + item.member_name + '</td><td>' + item.member_id + '</td><td>'+item.member_pw+'</td><td>' + item.member_tel + '</td><td>'+item.member_age+'</td><td>'+item.member_gender+'</td><td><span class="glyphicon glyphicon-wrench" onclick="edit('+item.member_seq+');"></span> / <span class="glyphicon glyphicon-remove" onclick="del('+item.member_seq+');"></td></tr>';
						
						$('.list tbody').append(tr);
						
					});
					
				},
				
				//try-catch
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
			
		}
		
		load();//1. 시작할 때 호출
		
		
		
		$('#btn').on('click', add);
		
		function add() {
			
			let data = JSON.stringify($('#form1').serializeObject());
			
			$.ajax({
				
				//request
				type: 'POST',
				url: 'http://localhost:8090/address',
				contentType: 'application/json;charset=UTF-8',
				data: data,
				
				//response
				dataType: 'json',
				success: function(result) {
					if (result == 1) {
						load();
						$('#form1 input[class=form-control]').val('');
					}
				},
				
				//error
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
			
		}
		
		
		function edit(member_seq) {
			
			let member_name = $(event.srcElement).parent().parent().children().eq(1).text();
			let member_age = $(event.srcElement).parent().parent().children().eq(5).text();
			let member_id = $(event.srcElement).parent().parent().children().eq(2).text();
			let member_pw = $(event.srcElement).parent().parent().children().eq(3).text();
			let member_tel = $(event.srcElement).parent().parent().children().eq(4).text();
			let member_gender = $(event.srcElement).parent().parent().children().eq(6).text();
			let memberlv_seq = $(event.srcElement).parent().parent().children().eq(0).text();
			
			$('input[name=member_name]').val(member_name);
			$('input[name=member_age]').val(member_age);
			$('input[name=member_id]').val(member_id);
			$('input[name=member_pw]').val(member_pw);
			$('input[name=member_tel]').val(member_tel);
			$('select[name=member_gender]').val(member_gender);
			$('select[name=memberlv_seq]').val(memberlv_seq);
			
			$('#btn').val('수정하기');
			$('#btn').off('click', add);
			$('#btn').on('click', {member_seq: member_seq}, editok);
			
		}
		
		function editok(evt) {
			
			/* 
			console.log($('#form1').serializeObject());
			let obj = $('#form1').serializeObject();
			obj.seq = evt.data.seq;
			console.log(obj);
			return; 
			*/
						
			let data = JSON.stringify($('#form1').serializeObject());
			
			
			$.ajax({
				
				//request
				type: 'PUT',
				url: 'http://localhost:8090/address/' + evt.data.member_seq,
				contentType: 'application/json;charset=UTF-8',
				data: data,
				
				//response
				dataType: 'json',
				success: function(result) {
					if (result == 1) {
						load();
						$('#form1 input[class=form-control]').val('');
						
						$('#btn').val('추가하기');
						$('#btn').off('click', editok);
						$('#btn').on('click', add);
					}
				},
				
				//error
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
		}
		
		function del(member_id) {
			
			$.ajax({
				
				//request
				type: 'DELETE',
				url: 'http://localhost:8090/address/' + member_id,
				
				//response
				dataType: 'json',
				success: function(result) {
					if (result == 1) {
						load();
					}
				},
				
				//error
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
			
		}
		
		/* 
		$('#word').keydown((evt)=>{
			if (evt.keyCode == 13 && $('#word').val() != '') {
				
				load($('#word').val());
				
			}
		}); 
		*/
		
		$('#word').keyup((evt)=>{
			
			let regex = /^[가-힣]{1,}$/gi;
			
			if (regex.test($('#word').val())) {
				load($('#word').val());
			}
			
		});
		
		
		
		function clearSearch() {
			$('#word').val('');
			load();
		}
	
		
		
		$(document).ready(function(){
			  $("#accordionExample").click(function(){
			    $("#collapseOne").toggle();
			  });
			});
		
	
	</script>


</body>
</html>



















