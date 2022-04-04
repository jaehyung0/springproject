<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.list th, .list td { text-align: center; }
	.list th:nth-child(1) { width: 60px; }
	.list th:nth-child(2) { width: 160px; }	
	.list th:nth-child(3) { width: 250px; }
	.list th:nth-child(4) { width: 120px; }
	.list th:nth-child(5) { width: 100px; }
	.list th:nth-child(6) { width: 180px; }
	.list td:nth-child(2) { text-align: left; }
	
	.list{
	width: 900px;
	margin: 10px auto;
	}
	.btn{
	float: right;
	margin: 5px 80px;
	border: 2px solid #3751FF; 
	color: #3751FF;
	border-radius: 5px;
	}
</style>

<h1 class="h3 mb-3" style="margin: 0px 50px"><strong>상품관리 > 재고조회</strong></h1>
<div class="btns">
		<input type="button" value="작성하기" class="btn btn-default" onclick="location.href='/spring2/add';">
</div>
<table class="table table-bordered list">
	<tr>
		<th>번호</th>
		<th>이미지</th>
		<th>상품명</th>
		<th>위치</th>
		<th>수량</th>
		<th>가격</th>
		
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.stock_seq}</td>
		<td>
			<c:if test="${not empty dto.stock_img}">
			<img src="resources/image/${dto.stock_img}" width= "120px" height="110px">
			</c:if>
			<c:if test="${empty dto.stock_img}">
			<img src="resources/image/no_image.png" width= "120px" height="110px">
		</c:if>
		</td>
		
		<td>
			<a href="/spring2/view?stock_seq=${dto.stock_seq}">${dto.stock_name}</a>
			<c:if test="${empty dto.stock_img}">
				<span class="glyphicon glyphicon-alert"></span>
			</c:if>
		</td>
		<td>${dto.stock_l}</td>
		<td>${dto.stock_cnt}</td>
		<td>${dto.stock_price}</td>
	</tr>
	</c:forEach>
</table>




