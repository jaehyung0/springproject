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
									<option value="<%=cal.get(Calendar.MONTH)+1 %>"  <c:if test="${month eq '2'}">selected</c:if> >2022년 <%=cal.get(Calendar.MONTH)+1 %>월</option>
									<option value="<%=cal.get(Calendar.MONTH) %>" <c:if test="${month eq '1'}">selected</c:if>>2022년 <%=cal.get(Calendar.MONTH) %>월</option>
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
														<h4 class="card-title">${month}월 총 현금 금액 </h4>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${monthmpcdto.monthmpc+monthmpricedto.monthmprice}원</h1>
											
											</div>
										</div>

									</div>

									<div class="col-sm-3">
										<div class="card" style="width: 350px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h4 class="card-title">${month}월 총 카드 금액</h4>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${monthcpcdto.monthcpc+monthcpricedto.monthcprice}원</h1>
											
											</div>
										</div>

									</div>
									<div class="col-sm-3">
										<div class="card" style="width: 350px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h4 class="card-title">${month}월 총 매출(현금+카드)</h4>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">${monthmpcdto.monthmpc+monthcpcdto.monthcpc + monthmpricedto.monthmprice+monthcpricedto.monthcprice}원</h1>
												
											</div>
										</div>

									</div>


								</div>
							</div>
						</div>

					</div>

					<div class="row">						
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3"
							style="width: 1150px;">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h4 class="card-title mb-0">항목별 월별 매출액</h4>
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
												<td class="text-end" style="width: 100px;"></td>
												<td class="text-end" style="width: 150px;">현금</td>
												<td class="text-end" style="width: 150px;">카드</td>
											</tr>
											<tr>
												<td>PC사용료</td>
												<td class="text-end">${monthmpcdto.monthmpc}원</td>
												<td class="text-end">${monthcpcdto.monthcpc}원</td>
											</tr>
											<tr>
												<td>식사</td>
												<td class="text-end">${monthmpricelistdto.monthmpricelist1}원</td>
												<td class="text-end">${monthcpricelistdto.monthcpricelist1}원</td>
											</tr>
											<tr>
												<td>튀김</td>
												<td class="text-end">${monthmpricelistdto.monthmpricelist2}원</td>
												<td class="text-end">${monthcpricelistdto.monthcpricelist2}원</td>
											</tr>
											<tr>
												<td>라면</td>
												<td class="text-end">${monthmpricelistdto.monthmpricelist3}원</td>
												<td class="text-end">${monthcpricelistdto.monthcpricelist3}원</td>
											</tr>
											<tr>
												<td>음료</td>
												<td class="text-end">${monthmpricelistdto.monthmpricelist4+monthmpricelistdto.monthmpricelist7}원</td>
												<td class="text-end">${monthcpricelistdto.monthcpricelist4+monthcpricelistdto.monthcpricelist7}원</td>
											</tr>
											<tr>
												<td>과자</td>
												<td class="text-end">${monthmpricelistdto.monthmpricelist5+monthmpricelistdto.monthmpricelist6}원</td>
												<td class="text-end">${monthcpricelistdto.monthcpricelist5+monthcpricelistdto.monthcpricelist6}원</td>
											</tr>
												
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
					
					<div class="row">
						<div class="col-xl-6 col-xxl-7" style="width: 560px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 PC사용료 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-xxl-7" style="width: 590px; padding-left: 15px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 식사 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line1"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-xl-6 col-xxl-7" style="width: 560px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 튀김 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line2"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-xxl-7" style="width: 590px; padding-left: 15px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 라면 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line3"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-xl-6 col-xxl-7" style="width: 560px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 음료 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line4"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-xxl-7" style="width: 590px; padding-left: 15px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h4 class="card-title mb-0">일별 과자 매출</h4>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line5"></canvas>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					

			</main>

			


	<script>
	function typeMonth() {
		var monthseq = $("#reqmonth").val() 
		var params = { "month" :  + $("#reqmonth").val() };
// 		var params = { month : $("#reqmonth").val() };
		//console.log(params);
		

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
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
					datasets : [ {
						label : "현금 사용료 (원)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ ${daympcdto.daympc1}, ${daympcdto.daympc2}
								,${daympcdto.daympc3}, ${daympcdto.daympc4}
								,${daympcdto.daympc5}, ${daympcdto.daympc6}
								,${daympcdto.daympc7}, ${daympcdto.daympc8}
								,${daympcdto.daympc9}, ${daympcdto.daympc10}
								,${daympcdto.daympc11}, ${daympcdto.daympc12}
								,${daympcdto.daympc13}, ${daympcdto.daympc14}
								,${daympcdto.daympc15}, ${daympcdto.daympc16}
								,${daympcdto.daympc17}, ${daympcdto.daympc18}
								,${daympcdto.daympc19}, ${daympcdto.daympc20}
								,${daympcdto.daympc21}, ${daympcdto.daympc22}
								,${daympcdto.daympc23}, ${daympcdto.daympc24}
								,${daympcdto.daympc25}, ${daympcdto.daympc26}
								,${daympcdto.daympc27}, ${daympcdto.daympc28}
								,${daympcdto.daympc29}, ${daympcdto.daympc30}
								,${daympcdto.daympc31} ]
					
					
						}, {
							label : "카드 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.danger,
							data : [ ${daycpcdto.daycpc1}, ${daycpcdto.daycpc2}
									,${daycpcdto.daycpc3}, ${daycpcdto.daycpc4}
									,${daycpcdto.daycpc5}, ${daycpcdto.daycpc6}
									,${daycpcdto.daycpc7}, ${daycpcdto.daycpc8}
									,${daycpcdto.daycpc9}, ${daycpcdto.daycpc10}
									,${daycpcdto.daycpc11}, ${daycpcdto.daycpc12}
									,${daycpcdto.daycpc13}, ${daycpcdto.daycpc14}
									,${daycpcdto.daycpc15}, ${daycpcdto.daycpc16}
									,${daycpcdto.daycpc17}, ${daycpcdto.daycpc18}
									,${daycpcdto.daycpc19}, ${daycpcdto.daycpc20}
									,${daycpcdto.daycpc21}, ${daycpcdto.daycpc22}
									,${daycpcdto.daycpc23}, ${daycpcdto.daycpc24}
									,${daycpcdto.daycpc25}, ${daycpcdto.daycpc26}
									,${daycpcdto.daycpc27}, ${daycpcdto.daycpc28}
									,${daycpcdto.daycpc29}, ${daycpcdto.daycpc30}
									,${daycpcdto.daycpc31} ]
						
						
							}, ]
						
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
								stepSize : 10000
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
		
		
// 		일별 식사 그래프
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line1")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line1"), {
				type : "line",
				data : {
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
						datasets : [ {
							label : "현금 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.primary,
							data : [ ${daymmealdto.daymmeal1}, ${daymmealdto.daymmeal2}
							,${daymmealdto.daymmeal3}, ${daymmealdto.daymmeal4}
							,${daymmealdto.daymmeal5}, ${daymmealdto.daymmeal6}
							,${daymmealdto.daymmeal7}, ${daymmealdto.daymmeal8}
							,${daymmealdto.daymmeal9}, ${daymmealdto.daymmeal10}
							,${daymmealdto.daymmeal11}, ${daymmealdto.daymmeal12}
							,${daymmealdto.daymmeal13}, ${daymmealdto.daymmeal14}
							,${daymmealdto.daymmeal15}, ${daymmealdto.daymmeal16}
							,${daymmealdto.daymmeal17}, ${daymmealdto.daymmeal18}
							,${daymmealdto.daymmeal19}, ${daymmealdto.daymmeal20}
							,${daymmealdto.daymmeal21}, ${daymmealdto.daymmeal22}
							,${daymmealdto.daymmeal23}, ${daymmealdto.daymmeal24}
							,${daymmealdto.daymmeal25}, ${daymmealdto.daymmeal26}
							,${daymmealdto.daymmeal27}, ${daymmealdto.daymmeal28}
							,${daymmealdto.daymmeal29}, ${daymmealdto.daymmeal30}
							,${daymmealdto.daymmeal31} ]
						
						
							}, {
								label : "카드 사용료 (원)",
								fill : true,
								backgroundColor : gradient,
								borderColor : window.theme.danger,
								data : [ ${daycmealdto.daycmeal1}, ${daycmealdto.daycmeal2}
								,${daycmealdto.daycmeal3}, ${daycmealdto.daycmeal4}
								,${daycmealdto.daycmeal5}, ${daycmealdto.daycmeal6}
								,${daycmealdto.daycmeal7}, ${daycmealdto.daycmeal8}
								,${daycmealdto.daycmeal9}, ${daycmealdto.daycmeal10}
								,${daycmealdto.daycmeal11}, ${daycmealdto.daycmeal12}
								,${daycmealdto.daycmeal13}, ${daycmealdto.daycmeal14}
								,${daycmealdto.daycmeal15}, ${daycmealdto.daycmeal16}
								,${daycmealdto.daycmeal17}, ${daycmealdto.daycmeal18}
								,${daycmealdto.daycmeal19}, ${daycmealdto.daycmeal20}
								,${daycmealdto.daycmeal21}, ${daycmealdto.daycmeal22}
								,${daycmealdto.daycmeal23}, ${daycmealdto.daycmeal24}
								,${daycmealdto.daycmeal25}, ${daycmealdto.daycmeal26}
								,${daycmealdto.daycmeal27}, ${daycmealdto.daycmeal28}
								,${daycmealdto.daycmeal29}, ${daycmealdto.daycmeal30}
								,${daycmealdto.daycmeal31} ]
							
							
								}, ]
						
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
								stepSize : 10000
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
		
// 		일별 튀김 그래프
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line2")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line2"), {
				type : "line",
				data : {
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
					datasets : [ {
						label : "현금 사용료 (원)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ ${daymfrydto.daymfry1}, ${daymfrydto.daymfry2}
						,${daymfrydto.daymfry3}, ${daymfrydto.daymfry4}
						,${daymfrydto.daymfry5}, ${daymfrydto.daymfry6}
						,${daymfrydto.daymfry7}, ${daymfrydto.daymfry8}
						,${daymfrydto.daymfry9}, ${daymfrydto.daymfry10}
						,${daymfrydto.daymfry11}, ${daymfrydto.daymfry12}
						,${daymfrydto.daymfry13}, ${daymfrydto.daymfry14}
						,${daymfrydto.daymfry15}, ${daymfrydto.daymfry16}
						,${daymfrydto.daymfry17}, ${daymfrydto.daymfry18}
						,${daymfrydto.daymfry19}, ${daymfrydto.daymfry20}
						,${daymfrydto.daymfry21}, ${daymfrydto.daymfry22}
						,${daymfrydto.daymfry23}, ${daymfrydto.daymfry24}
						,${daymfrydto.daymfry25}, ${daymfrydto.daymfry26}
						,${daymfrydto.daymfry27}, ${daymfrydto.daymfry28}
						,${daymfrydto.daymfry29}, ${daymfrydto.daymfry30}
						,${daymfrydto.daymfry31} ]
					
					
						}, {
							label : "카드 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.danger,
							data : [ ${daycfrydto.daycfry1}, ${daycfrydto.daycfry2}
							,${daycfrydto.daycfry3}, ${daycfrydto.daycfry4}
							,${daycfrydto.daycfry5}, ${daycfrydto.daycfry6}
							,${daycfrydto.daycfry7}, ${daycfrydto.daycfry8}
							,${daycfrydto.daycfry9}, ${daycfrydto.daycfry10}
							,${daycfrydto.daycfry11}, ${daycfrydto.daycfry12}
							,${daycfrydto.daycfry13}, ${daycfrydto.daycfry14}
							,${daycfrydto.daycfry15}, ${daycfrydto.daycfry16}
							,${daycfrydto.daycfry17}, ${daycfrydto.daycfry18}
							,${daycfrydto.daycfry19}, ${daycfrydto.daycfry20}
							,${daycfrydto.daycfry21}, ${daycfrydto.daycfry22}
							,${daycfrydto.daycfry23}, ${daycfrydto.daycfry24}
							,${daycfrydto.daycfry25}, ${daycfrydto.daycfry26}
							,${daycfrydto.daycfry27}, ${daycfrydto.daycfry28}
							,${daycfrydto.daycfry29}, ${daycfrydto.daycfry30}
							,${daycfrydto.daycfry31} ]
						
						
							}, ]
						
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
								stepSize : 10000
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
		
// 		일별 라면 그래프
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line3")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line3"), {
				type : "line",
				data : {
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
					datasets : [ {
						label : "현금 사용료 (원)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ ${daymramendto.daymramen1}, ${daymramendto.daymramen2}
						,${daymramendto.daymramen3}, ${daymramendto.daymramen4}
						,${daymramendto.daymramen5}, ${daymramendto.daymramen6}
						,${daymramendto.daymramen7}, ${daymramendto.daymramen8}
						,${daymramendto.daymramen9}, ${daymramendto.daymramen10}
						,${daymramendto.daymramen11}, ${daymramendto.daymramen12}
						,${daymramendto.daymramen13}, ${daymramendto.daymramen14}
						,${daymramendto.daymramen15}, ${daymramendto.daymramen16}
						,${daymramendto.daymramen17}, ${daymramendto.daymramen18}
						,${daymramendto.daymramen19}, ${daymramendto.daymramen20}
						,${daymramendto.daymramen21}, ${daymramendto.daymramen22}
						,${daymramendto.daymramen23}, ${daymramendto.daymramen24}
						,${daymramendto.daymramen25}, ${daymramendto.daymramen26}
						,${daymramendto.daymramen27}, ${daymramendto.daymramen28}
						,${daymramendto.daymramen29}, ${daymramendto.daymramen30}
						,${daymramendto.daymramen31} ]
					
					
						}, {
							label : "카드 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.danger,
							data : [ ${daycramendto.daycramen1}, ${daycramendto.daycramen2}
							,${daycramendto.daycramen3}, ${daycramendto.daycramen4}
							,${daycramendto.daycramen5}, ${daycramendto.daycramen6}
							,${daycramendto.daycramen7}, ${daycramendto.daycramen8}
							,${daycramendto.daycramen9}, ${daycramendto.daycramen10}
							,${daycramendto.daycramen11}, ${daycramendto.daycramen12}
							,${daycramendto.daycramen13}, ${daycramendto.daycramen14}
							,${daycramendto.daycramen15}, ${daycramendto.daycramen16}
							,${daycramendto.daycramen17}, ${daycramendto.daycramen18}
							,${daycramendto.daycramen19}, ${daycramendto.daycramen20}
							,${daycramendto.daycramen21}, ${daycramendto.daycramen22}
							,${daycramendto.daycramen23}, ${daycramendto.daycramen24}
							,${daycramendto.daycramen25}, ${daycramendto.daycramen26}
							,${daycramendto.daycramen27}, ${daycramendto.daycramen28}
							,${daycramendto.daycramen29}, ${daycramendto.daycramen30}
							,${daycramendto.daycramen31} ]
						
						
							}, ]
						
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
								stepSize : 10000
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
		
// 		일별 음료 그래프
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line4")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line4"), {
				type : "line",
				data : {
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
					datasets : [ {
						label : "현금 사용료 (원)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ ${daymdrankdto.daymdrank1}, ${daymdrankdto.daymdrank2}
						,${daymdrankdto.daymdrank3}, ${daymdrankdto.daymdrank4}
						,${daymdrankdto.daymdrank5}, ${daymdrankdto.daymdrank6}
						,${daymdrankdto.daymdrank7}, ${daymdrankdto.daymdrank8}
						,${daymdrankdto.daymdrank9}, ${daymdrankdto.daymdrank10}
						,${daymdrankdto.daymdrank11}, ${daymdrankdto.daymdrank12}
						,${daymdrankdto.daymdrank13}, ${daymdrankdto.daymdrank14}
						,${daymdrankdto.daymdrank15}, ${daymdrankdto.daymdrank16}
						,${daymdrankdto.daymdrank17}, ${daymdrankdto.daymdrank18}
						,${daymdrankdto.daymdrank19}, ${daymdrankdto.daymdrank20}
						,${daymdrankdto.daymdrank21}, ${daymdrankdto.daymdrank22}
						,${daymdrankdto.daymdrank23}, ${daymdrankdto.daymdrank24}
						,${daymdrankdto.daymdrank25}, ${daymdrankdto.daymdrank26}
						,${daymdrankdto.daymdrank27}, ${daymdrankdto.daymdrank28}
						,${daymdrankdto.daymdrank29}, ${daymdrankdto.daymdrank30}
						,${daymdrankdto.daymdrank31} ]
					
					
						}, {
							label : "카드 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.danger,
							data : [ ${daycdrankdto.daycdrank1}, ${daycdrankdto.daycdrank2}
							,${daycdrankdto.daycdrank3}, ${daycdrankdto.daycdrank4}
							,${daycdrankdto.daycdrank5}, ${daycdrankdto.daycdrank6}
							,${daycdrankdto.daycdrank7}, ${daycdrankdto.daycdrank8}
							,${daycdrankdto.daycdrank9}, ${daycdrankdto.daycdrank10}
							,${daycdrankdto.daycdrank11}, ${daycdrankdto.daycdrank12}
							,${daycdrankdto.daycdrank13}, ${daycdrankdto.daycdrank14}
							,${daycdrankdto.daycdrank15}, ${daycdrankdto.daycdrank16}
							,${daycdrankdto.daycdrank17}, ${daycdrankdto.daycdrank18}
							,${daycdrankdto.daycdrank19}, ${daycdrankdto.daycdrank20}
							,${daycdrankdto.daycdrank21}, ${daycdrankdto.daycdrank22}
							,${daycdrankdto.daycdrank23}, ${daycdrankdto.daycdrank24}
							,${daycdrankdto.daycdrank25}, ${daycdrankdto.daycdrank26}
							,${daycdrankdto.daycdrank27}, ${daycdrankdto.daycdrank28}
							,${daycdrankdto.daycdrank29}, ${daycdrankdto.daycdrank30}
							,${daycdrankdto.daycdrank31} ]
						
						
							}, ]
						
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
								stepSize : 10000
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
		
// 		일별 과자 그래프
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line5")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line5"), {
				type : "line",
				data : {
					labels : [ "1일", "2일", "3일", "4일", "5일"
						, "6일", "7일", "8일", "9일", "10일"
						, "11일", "12일", "13일", "14일", "15일"
						, "16일", "17일", "18일", "19일", "20일"
						, "21일", "22일", "23일", "24일", "25일"
						, "26일", "27일", "28일", "29일", "30일","31일"],
					datasets : [ {
						label : "현금 사용료 (원)",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ ${daymsnackdto.daymsnack1}, ${daymsnackdto.daymsnack2}
						,${daymsnackdto.daymsnack3}, ${daymsnackdto.daymsnack4}
						,${daymsnackdto.daymsnack5}, ${daymsnackdto.daymsnack6}
						,${daymsnackdto.daymsnack7}, ${daymsnackdto.daymsnack8}
						,${daymsnackdto.daymsnack9}, ${daymsnackdto.daymsnack10}
						,${daymsnackdto.daymsnack11}, ${daymsnackdto.daymsnack12}
						,${daymsnackdto.daymsnack13}, ${daymsnackdto.daymsnack14}
						,${daymsnackdto.daymsnack15}, ${daymsnackdto.daymsnack16}
						,${daymsnackdto.daymsnack17}, ${daymsnackdto.daymsnack18}
						,${daymsnackdto.daymsnack19}, ${daymsnackdto.daymsnack20}
						,${daymsnackdto.daymsnack21}, ${daymsnackdto.daymsnack22}
						,${daymsnackdto.daymsnack23}, ${daymsnackdto.daymsnack24}
						,${daymsnackdto.daymsnack25}, ${daymsnackdto.daymsnack26}
						,${daymsnackdto.daymsnack27}, ${daymsnackdto.daymsnack28}
						,${daymsnackdto.daymsnack29}, ${daymsnackdto.daymsnack30}
						,${daymsnackdto.daymsnack31} ]
					
					
						}, {
							label : "카드 사용료 (원)",
							fill : true,
							backgroundColor : gradient,
							borderColor : window.theme.danger,
							data : [ ${daycsnackdto.daycsnack1}, ${daycsnackdto.daycsnack2}
							,${daycsnackdto.daycsnack3}, ${daycsnackdto.daycsnack4}
							,${daycsnackdto.daycsnack5}, ${daycsnackdto.daycsnack6}
							,${daycsnackdto.daycsnack7}, ${daycsnackdto.daycsnack8}
							,${daycsnackdto.daycsnack9}, ${daycsnackdto.daycsnack10}
							,${daycsnackdto.daycsnack11}, ${daycsnackdto.daycsnack12}
							,${daycsnackdto.daycsnack13}, ${daycsnackdto.daycsnack14}
							,${daycsnackdto.daycsnack15}, ${daycsnackdto.daycsnack16}
							,${daycsnackdto.daycsnack17}, ${daycsnackdto.daycsnack18}
							,${daycsnackdto.daycsnack19}, ${daycsnackdto.daycsnack20}
							,${daycsnackdto.daycsnack21}, ${daycsnackdto.daycsnack22}
							,${daycsnackdto.daycsnack23}, ${daycsnackdto.daycsnack24}
							,${daycsnackdto.daycsnack25}, ${daycsnackdto.daycsnack26}
							,${daycsnackdto.daycsnack27}, ${daycsnackdto.daycsnack28}
							,${daycsnackdto.daycsnack29}, ${daycsnackdto.daycsnack30}
							,${daycsnackdto.daycsnack31} ]
						
						
							}, ]
						
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
								stepSize : 10000
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
					labels : [ "pc 사용료", "식사", "튀김", "라면", "음료", "과자"],
					datasets : [ {
						data : [ ${monthmpcdto.monthmpc+monthcpcdto.monthcpc}
						, ${monthmpricelistdto.monthmpricelist1+monthcpricelistdto.monthcpricelist1}
						, ${monthmpricelistdto.monthmpricelist2+monthcpricelistdto.monthcpricelist2}
						, ${monthmpricelistdto.monthmpricelist3+monthcpricelistdto.monthcpricelist3}
						, ${monthmpricelistdto.monthmpricelist4+monthcpricelistdto.monthcpricelist4
							+monthmpricelistdto.monthmpricelist7+monthcpricelistdto.monthcpricelist7}
						, ${monthmpricelistdto.monthmpricelist5+monthcpricelistdto.monthcpricelist5
							+monthmpricelistdto.monthmpricelist6+monthcpricelistdto.monthcpricelist6}
						],
						backgroundColor : [ window.theme.danger,
								window.theme.warning, window.theme.success,
								window.theme.primary, window.theme.secondary,window.theme.dark ],
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


