<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	.rowblank{clear: both;}
	.cardhover:hover{
		
		background-color: rgba(55, 82, 255, 0.123);
		

	}
	small{
	 text-align: right;
	}
</style>
<body>

	<!--왼쪽 메뉴 바-->



	<!-- 오른쪽 상단 관리자 메뉴 -->
<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>메인 화면</strong></h1>

					<!-- 첫번째 줄 -->
					<div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row" style="width:1500px; margin-right:10px;">
									<div class="col-sm-6">
										<div class="card" style="width:250px;">
											<div class="card-body"> 
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Today 판매량</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="trending-up"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">120건</h1>
												<!-- <div class="mb-0">
													<span class="text-danger"> <i class="mdi mdi-arrow-bottom-right"></i> -3.65% </span>
													<span class="text-muted">Since last week</span>
												</div> -->
											</div>
										</div>
										
									</div>
									
									<div class="col-sm-6">
										<div class="card" style="width:250px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">품절 주의 항목</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="zap"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">신라면</h1>
												<!-- <div class="mb-0">
													<span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
													<span class="text-muted">Since last week</span>
												</div> -->
											</div>
										</div>
										
									</div>
									<div class="col-sm-6">
										<div class="card" style="width:250px;">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">오늘 주문 금액</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="dollar-sign"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">180400원</h1>
												<!-- <div class="mb-0">
													<span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
													<span class="text-muted">Since last week</span>
												</div> -->
											</div>
										</div>
										
									</div>
									<div class="col-sm-6">
										<!--메뉴판 관리로 이동-->
										<a href="index.html" style="text-decoration:none">
										<div class="card cardhover" style="width:250px; ">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title" >바로가기</h5>
													</div>
												
													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="corner-up-right"></i>
														</div>
													</div>
												</div>
												
												<h1 class="mt-1 mb-3 " style="font-weight: bold;">메뉴판 관리</h1>
												<!-- <div class="mb-0">
													<span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
													<span class="text-muted">Since last week</span>
												</div> -->
												<div class="row">
													
												</div>
											</div>
										</div>
										</a>
									</div>
									
								</div>
							</div>
						</div>

					</div>


					<!--cornflowerblue 바탕 왼쪽 2개-->
					<div class="row" style="float:left; padding:0px;">
						<div class="card" style="width:1150px; background-color: transparent;">
							<div class="card-body" style="color:#3751FF; border:2px solid #3751FF; border-radius: 15px;">
								<div class="row" >
									<div class="col mt-0">
										<h5 class="card-title" style="color:#3751FF;">유의사항</h5>
									</div>

									
								</div>
								<h1 class="mt-1 mb-3" style="color:#3751FF; font-weight: bold;">라면 50개 이하, 기타 재고 40개 이하 시 거래처 주문</h1>
								
							</div>
						</div>
						<div class="card"  style="width:250px; background-color: transparent;">
							
						</div>
					</div>

					

					<!--cornflowerblue 바탕 오른쪽 2개-->
					
					

					<!--그래프-->
					<div class="rowblank"> 
					 	
 
					</div> 
					<div class="row">
						<div class="col-12 col-lg-8 col-xxl-9 d-flex" style="width:1150px; padding:0px;">
							<div class="card flex-fill">
								<div class="card-header">
					
									<h5 class="card-title mb-0">재고현황<small><a href="pmlist">(더보기)</a></small></h5>
									
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>품목명</th>
											<th class="d-none d-xl-table-cell">수량</th>
											<th class="d-none d-xl-table-cell">진열위치</th>
											<th class="d-none d-xl-table-cell">판매가</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>신라면</td>
											<td class="d-none d-xl-table-cell">50</td>
											<td class="d-none d-xl-table-cell">A구역 1열</td>
											<td class="d-none d-xl-table-cell">1800원</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					
					</div>

					<!--인수인계/근무표-->
					<div class="row">
						
						<div class="row">
							<div class="col-12 col-lg-8 col-xxl-9 d-flex" style="width:580px; margin-right:35px;">
								<div class="card flex-fill">
									<div class="card-header">

										<h5 class="card-title mb-0">거래처 연락망</h5>
									</div>
									<table class="table table-hover my-0">
										<thead>
											<tr>
												<th>회사명</th>
												<th class="d-none d-xl-table-cell">연락처</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>롯데 칠성</td>
												<td class="d-none d-xl-table-cell">031-0000-0000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-12 col-lg-4 col-xxl-3 d-flex" style="width:560px;">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">근무표</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>번호</th>
											<th class="d-none d-xl-table-cell">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Project Apollo</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</main>
	<script src="resources/js/highcharts.js"></script>
	<script>
	Highcharts.chart('container', {
	    chart: {
	        type: 'spline'
	    },
	    title: {
	        text: ''
	    },
	    
	    xAxis: {
	        categories: ['0~1', '2~3', '4~5', '6~7', '8~9', '10~11',
	            '12~13', '14~15', '16~17', '18~19', '20~21', '22~23']
	    },
	    yAxis: {
	        title: {
	            text: '인원 수'
	        },
	        labels: {
	            formatter: function () {
	                return this.value + '명';
	            }
	        }
	    },
	    tooltip: {
	        crosshairs: false,
	        shared: true
	    },
	    plotOptions: {
	        spline: {
	            marker: {
	                radius: 4,
	                lineColor: '#666666',
	                lineWidth: 1
	            }
	        }
	    },
	    series: [{
	        name: 'Tokyo',
	        marker: {
	            symbol: 'square'
	        },
	        data: [20, 30, 10, 5, 10, 15, 20, 
	            26, 24, 35, 50, 60]

	    }]
	});
	</script>


</body>


