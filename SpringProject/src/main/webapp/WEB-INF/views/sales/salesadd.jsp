<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

		
<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>요금제 등록</strong></h1>

					

					<div class="row"> 
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3" style="width:1175px;">
							<div class="card flex-fill w-100" >
								
								<div class="card-body d-flex">
									
									<form method="POST" action="/spring/salesaddok" enctype="multipart/form-data">
									<table class="table mb-0">
										<tbody>
											<tr>
												<td style="width:200px; text-align: center;">요금 제목
												</td>
												<td>
													<input type="text" name="fee_name" class="form-control" style="width:700px;"   required autofocus >
												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">요금 분류</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="feectg_seq" id="inlineRadio1" value="2" checked>
														<label class="form-check-label" for="inlineRadio1">후 불</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="feectg_seq" id="inlineRadio2" value="1">
														<label class="form-check-label" for="inlineRadio2">선 불</label>
													 </div>
													
												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">요금 설정</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="method_seq" id="inlineRadio3" value="2" checked>
														<label class="form-check-label" for="inlineRadio3">신용카드 전용</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="method_seq" id="inlineRadio4" value="3">
														<label class="form-check-label" for="inlineRadio4">현금 전용</label>
													 </div>

												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">구  분</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="adult_seq" id="inlineRadio5" value="1" checked>
														<label class="form-check-label" for="inlineRadio5">학 생</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="adult_seq" id="inlineRadio6" value="2">
														<label class="form-check-label" for="inlineRadio6">성 인</label>
													 </div>

												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">요  금</td>
												<td>
													<div  style="float: left; width: 60px;" >
														<input type="text" name="fee_time" class="form-control" style="width:50px;"   required autofocus >
														
													</div>
													<div  style="float: left; width: 110px; margin-top: 5px;">
														분 사용시 마다
													</div>
													<div  style="float: left; width: 110px;">
														<input type="text" name="fee_price" class="form-control" style="width:100px;"   required autofocus >
													</div>
													<div  style="float: left; width: 110px; margin-top: 5px;">
														원 부과
													</div>
												</td>
											</tr>	
											<tr>
												<td colspan="2" style="border:0px; text-align: center; width:1175px;">
													<input type="submit" value="등록 하기" class="btn btn-primary" style="margin-top: 30px;height: 40px; width: 150px;">
												</td>
												
											</tr>
										</tbody>								
									</table>
									</form>
									
								</div>
							</div>
							
						</div>

					</div>
					
					<div class="row">
						<div class="col-12 col-lg-8 col-xxl-9 d-flex" style="width:1175px;">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">요금제 현황</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th class="d-none d-xl-table-cell">번 호</th>
											<th class="d-none d-xl-table-cell">요금 제목</th>
											<th class="d-none d-xl-table-cell">요금 분류</th>
											<th class="d-none d-xl-table-cell">요금 설정</th>
											<th class="d-none d-xl-table-cell">구 분 </th>
											<th class="d-none d-xl-table-cell">요 금</th>
											<th class="d-none d-xl-table-cell" style="width:70px;">수 정</th>
											<th class="d-none d-xl-table-cell" style="width:70px;">삭 제</th>
										</tr>
									</thead>
									<c:forEach items="${saleslist}" var="dto">
									<tbody>
										<tr>
											<td class="d-none d-xl-table-cell">${dto.rownum1}</td>
											<td class="d-none d-xl-table-cell">${dto.fee_name1}</td>
											<td class="d-none d-xl-table-cell">${dto.feectg_name1}</td>
											<td class="d-none d-xl-table-cell">${dto.method_name1}</td>
											<td class="d-none d-xl-table-cell">${dto.adlut_name1}</td>
											<td class="d-none d-xl-table-cell">${dto.fee_time1}분 당 ${dto.fee_price1}원</td>
											
											<td class="d-none d-xl-table-cell">
												
												 <button class="btn btn-default" id="fee_seq" onclick="showPopup(${dto.fee_seq})">
													<i class="align-middle" data-feather="tool"></i>		
												 </button>
											
												 <input type="hidden" name="fee_seq" value="${dto.fee_seq}">
	
											</td>
											
											<td class="d-none d-xl-table-cell">
												<form method="POST" action="/spring/salesdelok" enctype="multipart/form-data">
												 <button type="submit" class="btn btn-default">
													<i class="align-middle" data-feather="trash-2"></i>
												 </button>
											
												 <input type="hidden" name="fee_seq" value="${dto.fee_seq}">
												</form>
											</td>
										
											
										</tr>
									</tbody>
									</c:forEach>				
								</table>
								
							</div>
						</div>
					</div>
				

			
			</main>

	<script>
	  function showPopup(fee_seq) { 
		var popupX = (window.screen.width / 2) - (1300 / 2);
		var popupY= (window.screen.height / 2) - (600 / 2);
		
		window.open('/spring/salesedit?fee_seq='+fee_seq, 'edit', 'width=1300, height=600,left='+ popupX + ', top='+ popupY);
	  }
	</script>			




	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type : "line",
				data : {
					labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
							"Aug", "Sep", "Oct", "Nov", "Dec" ],
					datasets : [ {
						label : "Sales ($)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ 2115, 1562, 1584, 1892, 1587, 1923, 2566,
								2448, 2805, 3438, 2917, 3327 ]
					} ]
				},
				options : {
					maintainAspectRatio : false,
					legend : {
						display : false
					},
					tooltips : {
						intersect : false
					},
					hover : {
						intersect : true
					},
					plugins : {
						filler : {
							propagate : false
						}
					},
					scales : {
						xAxes : [ {
							reverse : true,
							gridLines : {
								color : "rgba(0,0,0,0.0)"
							}
						} ],
						yAxes : [ {
							ticks : {
								stepSize : 1000
							},
							display : true,
							borderDash : [ 3, 3 ],
							gridLines : {
								color : "rgba(0,0,0,0.0)"
							}
						} ]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Pie chart
			new Chart(document.getElementById("chartjs-dashboard-pie"), {
				type : "pie",
				data : {
					labels : [ "pc 사용료", "식사", "튀김", "라면", "음료", "과자+젤리"],
					datasets : [ {
						data : [ ${mpcdto.mmpcs+cpcdto.cmpcs}
						, ${pricedto.price1}
						, ${pricedto.price2}
						, ${pricedto.price3}
						, ${pricedto.price4+pricedto.price7}
						, ${pricedto.price5+pricedto.price6} ],
						backgroundColor : [ window.theme.primary,
								window.theme.warning, window.theme.success,
								window.theme.danger, window.theme.secondary,window.theme.info ],
						borderWidth : 6
					} ]
				},
				options : {
					responsive : !window.MSInputMethodContext,
					maintainAspectRatio : false,
					legend : {
						display : false
					},
					cutoutPercentage : 75
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-dashboard-bar"),
					{
						type : "bar",
						data : {
							labels : [ "Jan", "Feb", "Mar", "Apr", "May",
									"Jun", "Jul", "Aug", "Sep", "Oct", "Nov",
									"Dec" ],
							datasets : [ {
								label : "This year",
								backgroundColor : window.theme.primary,
								borderColor : window.theme.primary,
								hoverBackgroundColor : window.theme.primary,
								hoverBorderColor : window.theme.primary,
								data : [ 54, 67, 41, 55, 62, 45, 55, 73, 60,
										76, 48, 79 ],
								barPercentage : .75,
								categoryPercentage : .5
							} ]
						},
						options : {
							maintainAspectRatio : false,
							legend : {
								display : false
							},
							scales : {
								yAxes : [ {
									gridLines : {
										display : false
									},
									stacked : false,
									ticks : {
										stepSize : 20
									}
								} ],
								xAxes : [ {
									stacked : false,
									gridLines : {
										color : "transparent"
									}
								} ]
							}
						}
					});
		});
	</script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
			var defaultDate = date.getUTCFullYear() + "-"
					+ (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
			document.getElementById("datetimepicker-dashboard").flatpickr({
				inline : true,
				prevArrow : "<span title=\"Previous month\">&laquo;</span>",
				nextArrow : "<span title=\"Next month\">&raquo;</span>",
				defaultDate : defaultDate
			});
		});
	</script>

</body>


