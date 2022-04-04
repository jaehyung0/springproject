<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   


<style>
	.add th{ width: 150px;}
	.add td{ width: auto;}
	.add textarea{ resize: none; height: 200px;}
	.add{
	width: 800px;
	margin: 10px auto;
	}
	
	.btn{
	margin: 50px 0px;
	}
	.detail tr{
	margin: 10px 0px;
	}
	.detail td{
	padding: 10px 0px;
	}
	
</style>
<h1 class="h3 mb-3" style="margin: 0px 50px"><strong>상품관리 > 재고수정</strong></h1>
<form method="POST" action="/spring2/editok" enctype="multipart/form-data">
<table class="table table-bordered add">
	<tr>
		<td>
			<c:if test="${not empty dto.stock_img}">
			<img src="resources/image/${dto.stock_img}" width= "340px" height= "340px">
			</c:if>
			<c:if test="${empty dto.stock_img}">
			<img src="resources/image/no_image.png" width= "340px" height= "340px">
			</c:if>
			
			<div style="width: 300px">
			<p style="text-align: center">기존이미지</p>
			<input type="file" name="attach" class="form-control">
			</div>
		</td>
		
		<td>
			<table class=" detail">
				<tr>
					<td>상품명</td>
					<td><input type ="text" name="stock_name" class="form-control" required value="${dto.stock_name}"></td>
				</tr>
				<tr>
				<th>상품금액</th>
				<td><input type ="text"  name="stock_price" class="form-control" required value="${dto.stock_price}"></td>
				</tr>
				<tr>
					<td>상품위치</td>
					<td><input type ="text" name ="stock_l" class="form-control" required value="${dto.stock_l}"></td>
				</tr>	
				<tr>
					<td>상품수량</td>
					<td><input type ="text" name ="stock_cnt" class="form-control" required value="${dto.stock_cnt}"></td>
				</tr>	
				
				
				<tr>
					<th>사진</th>
					<td><input type="file" name="attach" class="form-control" id="attach"></td>
				</tr>
			</table>
				
		</td>
	</tr>
</table>

<div class = "btns">
	<input type="button" value="돌아가기" class="btn btn-success" onclick="location.href='/spring2/pmlist';">
	<input type="submit" value="수정하기" class="btn btn-success">
	
</div>

<input type="hidden" name ="stock_seq" value="${dto.stock_seq}">
</form>




<script>
	$("#delete_btn").on("click", function(e){
		form.attr("action", "/delok");
		form.attr("method", "post");
		form.submit();
	});
</script>


