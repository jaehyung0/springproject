<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<!--왼쪽 메뉴 바-->



	<!-- 오른쪽 상단 관리자 메뉴 -->




	<main class="content">
		<div class="container-fluid p-0">

			<h1 class="h3 mb-3">
				<strong>메인 화면</strong>
			</h1>

			<!-- 첫번째 줄 -->
			<div class="row">
				<div class="col-xl-6 col-xxl-5 d-flex">
					<div class="w-100">
						<div class="row" style="width: 1500px; margin-right: 10px;">
							<div class="col-sm-6">
								<div class="card" style="width: 250px;">
									<div class="card-body">
										<div class="row">
											<div class="col mt-0">
												<h5 class="card-title">오늘 온 손님</h5>
											</div>

											<div class="col-auto">
												<div class="stat text-primary">
													<i class="align-middle" data-feather="user"></i>
												</div>
											</div>
										</div>
										<h1 class="mt-1 mb-3">60명</h1>
										<div class="mb-0">
											<span class="text-danger"> <i
												class="mdi mdi-arrow-bottom-right"></i> -3.65%
											</span> <span class="text-muted">Since last week</span>
										</div>
									</div>
								</div>

							</div>

							<div class="col-sm-6">
								<div class="card" style="width: 250px;">
									<div class="card-body">
										<div class="row">
											<div class="col mt-0">
												<h5 class="card-title">현재 인원 수</h5>
											</div>

											<div class="col-auto">
												<div class="stat text-primary">
													<i class="align-middle" data-feather="user"></i>
												</div>
											</div>
										</div>
										<h1 class="mt-1 mb-3">40명</h1>
										<div class="mb-0">
											<span class="text-success"> <i
												class="mdi mdi-arrow-bottom-right"></i> 6.65%
											</span> <span class="text-muted">Since last week</span>
										</div>
									</div>
								</div>

							</div>
							<div class="col-sm-6">
								<div class="card" style="width: 250px;">
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
										<h1 class="mt-1 mb-3">200,300원</h1>
										<div class="mb-0">
											<span class="text-success"> <i
												class="mdi mdi-arrow-bottom-right"></i> 6.65%
											</span> <span class="text-muted">Since last week</span>
										</div>
									</div>
								</div>

							</div>
							<div class="col-sm-6">
								<div class="card" style="width: 250px;">
									<div class="card-body">
										<div class="row">
											<div class="col mt-0">
												<h5 class="card-title">총 매출</h5>
											</div>

											<div class="col-auto">
												<div class="stat text-primary">
													<i class="align-middle" data-feather="dollar-sign"></i>
												</div>
											</div>
										</div>
										<h1 class="mt-1 mb-3">600,300원</h1>
										<div class="mb-0">
											<span class="text-success"> <i
												class="mdi mdi-arrow-bottom-right"></i> 6.65%
											</span> <span class="text-muted">Since last week</span>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>

			</div>


			<!--cornflowerblue 바탕 왼쪽 2개-->
			<div class="col-sm-6" style="float: left; margin-right: 10px; margin-left:-30px;">
				<div class="card"
					style="width: 250px; background-color: transparent;">
					<div class="card-body"
						style="background-color: cornflowerblue; color: black; border-radius: 15px;">
						<div class="row">
							<div class="col mt-0">
								<h5 class="card-title" style="color: black;">가장 많은 연령대</h5>
							</div>

							<div class="col-auto">
								<div class="stat text-primary">
									<i class="align-middle" data-feather="user"></i>
								</div>
							</div>
						</div>
						<h1 class="mt-1 mb-3">20대</h1>
						<!--<div class="mb-0">
									<span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
									<span class="text-muted">Since last week</span>
								</div> -->
					</div>
				</div>
				<div class="card"
					style="width: 250px; background-color: transparent;">
					<div class="card-body"
						style="background-color: cornflowerblue; color: black; border-radius: 15px;">
						<div class="row">
							<div class="col mt-0">
								<h5 class="card-title" style="color: black">평균 이용시간</h5>
							</div>

							<div class="col-auto">
								<div class="stat text-primary">
									<i class="align-middle" data-feather="clock"></i>
								</div>
							</div>
						</div>
						<h1 class="mt-1 mb-3">3시간30분</h1>
						<!-- <div class="mb-0">
									<span class="text-danger"> <i class="mdi mdi-arrow-bottom-right"></i> -2.25% </span>
									<span class="text-muted">Since last week</span>
								</div> -->
					</div>
				</div>
			</div>



			<!--cornflowerblue 바탕 오른쪽 2개-->
			<div class="col-sm-6" style="float: left; width: 300px; margin-right:15px;">
				<div class="card"
					style="width: 250px; background-color: transparent;">
					<div class="card-body"
						style="background-color: cornflowerblue; color: black; border-radius: 15px">
						<div class="row">
							<div class="col mt-0">
								<h5 class="card-title" style="color: black">가장 인기있는 음식</h5>
							</div>

							<div class="col-auto">
								<div class="stat text-primary">
									<i class="align-middle" data-feather="coffee"></i>
								</div>
							</div>
						</div>
						<h1 class="mt-1 mb-3">신라면</h1>
						<!--<div class="mb-0">
									<span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
									<span class="text-muted">Since last week</span>
								</div> -->
					</div>
				</div>
				<div class="card"
					style="width: 250px; background-color: transparent;">
					<div class="card-body"
						style="background-color: cornflowerblue; color: black; border-radius: 15px">
						<div class="row">
							<div class="col mt-0">
								<h5 class="card-title" style="color: black">평균 주문 완료시간</h5>
							</div>

							<div class="col-auto">
								<div class="stat text-primary">
									<i class="align-middle" data-feather="clock"></i>
								</div>
							</div>
						</div>
						<h1 class="mt-1 mb-3">10분</h1>
						<!-- <div class="mb-0">
									<span class="text-danger"> <i class="mdi mdi-arrow-bottom-right"></i> -2.25% </span>
									<span class="text-muted">Since last week</span>
								</div> -->
					</div>
				</div>
			</div>

			<!--  차트  -->
			<div class="row">
				<div class="col-xl-6 col-xxl-7" style="width: 555px;">
					<div class="card flex-fill w-100">
						<div class="card-header">
							<h5 class="card-title mb-0" style="padding: 10px;">인기시간대</h5>
						</div>
						<div class="card-body py-3" style="height:240px;">
							<div class="chart chart-sm" style="height:220px;">
								<figure class="highcharts-figure">
									<div id="container" style="height:200px;"></div>
								</figure>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--인수인계/근무표-->
			<div class="row">

				<div class="row">
					<div class="col-12 col-lg-8 col-xxl-9 d-flex"
						style="width: 580px; margin-right: 20px;">
						<div class="card flex-fill">
							<div class="card-header">

								<h5 class="card-title mb-0">인수인계 사항</h5>
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
					<div class="col-12 col-lg-4 col-xxl-3 d-flex" style="width: 580px;">
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


