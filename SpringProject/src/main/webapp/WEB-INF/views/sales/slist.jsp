<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*,java.text.*" %>

<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = simpleDate.format(date);
	
	Calendar cal = Calendar.getInstance();
%>
<body>

		

			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">	
						<strong>매출관리</strong>
						<div class="btn-group">

							<select id="reqmonth" class="form-select" onchange="typeMonth();"/>
									<option value="<%=cal.get(Calendar.MONTH)+1 %>" selected>2022년 <%=cal.get(Calendar.MONTH)+1 %>월</option>
									<option value="<%=cal.get(Calendar.MONTH) %>" >2022년 <%=cal.get(Calendar.MONTH) %>월</option>
							</select>
						
						</div>
					</h1>
					

					<div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row" style="width: 1600px; margin-right: 10px;">
									<div class="col-sm-3">
										<div class="card" style="width: 350px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">현금</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${mdto.daymprice+mpcdto.mmpcs}원</h1>
											
											</div>
										</div>

									</div>

									<div class="col-sm-3">
										<div class="card" style="width: 350px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">카드</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${cdto.daycprice+cpcdto.cmpcs}원</h1>
											
											</div>
										</div>

									</div>
									<div class="col-sm-3">
										<div class="card" style="width: 350px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">총 매출(현금+카드)</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${mdto.daymprice+cdto.daycprice+mpcdto.mmpcs+cpcdto.cmpcs}원</h1>
												
											</div>
										</div>

									</div>


								</div>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-xl-6 col-xxl-7" style="width: 560px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h5 class="card-title mb-0">월별 매출</h5>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3"
							style="width: 612.5px;">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">항목별 월별 매출액</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="py-3">
											<div class="chart chart-xs">
												<canvas id="chartjs-dashboard-pie"></canvas>
											</div>
										</div>
									</div>

									<table class="table mb-0">
										<tbody>
											<tr>
												<td>PC사용료</td>
												<td class="text-end">${mpcdto.mmpcs+cpcdto.cmpcs}원</td>
											</tr>
											<tr>
												<td>식사</td>
												<td class="text-end">${pricedto.price1}원</td>
											</tr>
											<tr>
												<td>튀김</td>
												<td class="text-end">${pricedto.price2}원</td>
											</tr>
											<tr>
												<td>라면</td>
												<td class="text-end">${pricedto.price3}원</td>
											</tr>
											<tr>
												<td>음료</td>
												<td class="text-end">${pricedto.price4+pricedto.price7}원</td>
											</tr>
											<tr>
												<td>과자+젤리</td>
												<td class="text-end">${pricedto.price5+pricedto.price6}원</td>
											</tr>
											
											
										</tbody>
									</table>
								</div>
							</div>
						</div>







					</div>








<!-- 					<div class="row"> -->

<!-- 						<div class="row"> -->
<!-- 							<div class="col-12 col-lg-8 col-xxl-9 d-flex" -->
<!-- 								style="width: 1175px; margin-right: 35px;"> -->
<!-- 								<div class="card flex-fill"> -->
<!-- 									<div class="card-header"> -->
<!-- 										<h5 class="card-title mb-0">월별 매출 내역</h5> -->
<!-- 									</div> -->
<!-- 									<table class="table table-hover my-0"> -->
<!-- 										<thead> -->
<!-- 											<tr> -->
<!-- 												<th class="d-none d-xl-table-cell">번호</th> -->
<!-- 												<th class="d-none d-xl-table-cell">날 짜</th> -->
<!-- 												<th class="d-none d-xl-table-cell">현 금</th> -->
<!-- 												<th class="d-none d-xl-table-cell">카 드</th> -->
<!-- 												<th class="d-none d-xl-table-cell">총 매출(현금 + 카드)</th> -->
												
<!-- 											</tr> -->
<!-- 										</thead> -->
<!-- 										<tbody> -->
<!-- 											<tr> -->
<!-- 												<td>1</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
												
<!-- 											</tr> -->
<!-- 										</tbody> -->
<!-- 										<tbody> -->
<!-- 											<tr> -->
<!-- 												<td>2</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
<!-- 												<td class="d-none d-xl-table-cell">01/01/2021</td> -->
												
<!-- 											</tr> -->
<!-- 										</tbody> -->
<!-- 									</table> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<div style="width: 500px; margin: 0 auto;"> -->
<!-- 						<h4>1 2 3 4 5 6 7 8 9 10</h4> -->
<!-- 					</div> -->
			
			</main>

			


	<script>
	
	function typeMonth() {
		var monthseq = $("#reqmonth").val() 
		var params = { "month" :  + $("#reqmonth").val() };
// 		var params = { month : $("#reqmonth").val() };
		//console.log(params);
		alert(monthseq);

		// ajax 통신
        $.ajax({
            type : "POST",            // HTTP method type(GET, POST) 형식이다.
            url : "/slistmonth?month="+monthseq,      // 컨트롤러에서 대기중인 URL 주소이다.
            //dataType: 'json',
            //contentType: "application/json; charset:UTF-8",
            //data :  JSON.stringify(params),            // Json 형식의 데이터이다.
            success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
            	location.href = "/slistmonth?month="+monthseq;
            	
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신 실패.")
            }
        });	     
	}
// 	function typeMonth() {
// 		var monthseq = $("#reqmonth").val() 
// 		var params = { "month" :  + $("#reqmonth").val() };
// // 		var params = { month : $("#reqmonth").val() };
// 		//console.log(params);
// 		alert(monthseq);

// 		// ajax 통신
//         $.ajax({
//             type : "POST",            // HTTP method type(GET, POST) 형식이다.
//             url : "/slistmonth?month="+monthseq,      // 컨트롤러에서 대기중인 URL 주소이다.
//             dataType: 'json',
//             contentType: "application/json; charset:UTF-8",
//             //data :  JSON.stringify(params),            // Json 형식의 데이터이다.
//             success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
//             	alert(res);
//             	//location.href = "/slistmonth"+monthseq;
//             },
//             error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
//                 alert("통신 실패.")
//             }
//         });	     
// 	}
	
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
					labels : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월",
							"8월", "9월", "10월", "11월", "12월" ],
					datasets : [ {
						label : "Sales ($)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ 982500, 303800, 0, 0, 0, 0, 0,
								0, 0, 0, 0, 0 ]
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
	

	

</body>


