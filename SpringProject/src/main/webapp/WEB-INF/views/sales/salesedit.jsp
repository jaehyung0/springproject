<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

		
<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>요금제 수정</strong></h1>

					<div class="row"> 
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3" style="width:1000px;">
							<div class="card flex-fill w-100">
								
								<div class="card-body d-flex">
											
									<table class="table mb-0">
										<tbody>
											<input type="hidden" name="fee_seq" value="${dto.fee_seq}">
											<tr>
												<td style="width:200px; text-align: center;">요금 제목
												</td>
												<td>
													<input type="text" name="fee_name" class="form-control" value="${dto.fee_name1}"  required autofocus >
													
												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">요금 분류</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="feectg_seq" id="inlineRadio1" value="2"
														 <c:if test="${dto.feectg_seq1 eq '2'}">checked</c:if>>
														<label class="form-check-label" for="inlineRadio1">후 불</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="feectg_seq" id="inlineRadio2" value="1"
														 <c:if test="${dto.feectg_seq1 eq '1'}">checked</c:if>>
														<label class="form-check-label" for="inlineRadio2">선 불</label>
													 </div>
													
												</td>
											</tr>
											
											<tr>
												<td style="width:200px; text-align: center;">요금 설정</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="method_seq" id="inlineRadio3" value="2"
														<c:if test="${dto.method_seq1 eq '2'}">checked</c:if>>
														<label class="form-check-label" for="inlineRadio3">신용카드 전용</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="method_seq" id="inlineRadio4" value="3"
														<c:if test="${dto.method_seq1 eq '3'}">checked</c:if>>
														
														<label class="form-check-label" for="inlineRadio4">현금 전용</label>
													 </div>

												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">구  분</td>
												<td>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="adult_seq" id="inlineRadio5" value="1"
														<c:if test="${dto.adult_seq1 eq '1'}">checked</c:if>>
														<label class="form-check-label" for="inlineRadio5">학 생</label>
													 </div>
													 <div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="adult_seq" id="inlineRadio6" value="2"
														<c:if test="${dto.adult_seq1 eq '2'}">checked</c:if>>
														<label class="form-check-label" for="inlineRadio6">성 인</label>
													 </div>

												</td>
											</tr>
											<tr>
												<td style="width:200px; text-align: center;">요  금</td>
												<td>
													<div  style="float: left; width: 60px;" >
														<input type="text" name="fee_time" class="form-control" style="width:50px;" value="${dto.fee_time1}"   required autofocus >
														
													</div>
													<div  style="float: left; width: 110px; margin-top: 5px;">
														분 사용시 마다
													</div>
													<div  style="float: left; width: 110px;">
														<input type="text" name="fee_price" class="form-control" style="width:100px;" value="${dto.fee_price1}"   required autofocus >
													</div>
													<div  style="float: left; width: 110px; margin-top: 5px;">
														원 부과
													</div>
												</td>
											</tr>	
											<tr>
												<td colspan="2" style="border:0px; text-align: center; width:1175px;">
													<input id="request" type='button' value="수정 하기" class="btn btn-primary" style="margin-top: 30px;height: 40px; width: 150px;">
												</td>
												
											</tr>
										</tbody>								
									</table>
									
									
								</div>
							</div>
							
						</div>

					</div>
					
			</main>
			
			<script>
			
			
			
		    $("#request").click(function(){
		 
		            // json 형식으로 데이터 set
		            var params = {
		            		  fee_seq : $('input[name=fee_seq]').val()
		            		, fee_name : $('input[name=fee_name]').val()
		                    , feectg_seq : $('input[name=feectg_seq]').val()
		                    , method_seq : $('input[name=method_seq]').val()
		                    , adult_seq : $('input[name=adult_seq]').val()
		                    , fee_time : $('input[name=fee_time]').val()
		                    , fee_price : $('input[name=fee_price]').val()
		            }
		                
		            // ajax 통신
		            $.ajax({
		                type : "POST",            // HTTP method type(GET, POST) 형식이다.
		                url : "/saleseditok",      // 컨트롤러에서 대기중인 URL 주소이다.
		                data : params,            // Json 형식의 데이터이다.
		                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
		                	alert("수정 완료")
		                	window.opener.location.reload();
		                
		                	window.close();
		                },
		                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
		                    alert("통신 실패.")
		                }
		            });
		        });
// 		


		
			</script>

</body>


