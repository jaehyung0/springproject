<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!-- view.jsp -->

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

<h1 class="h3 mb-3" style="margin: 0px 50px"><strong>상품관리 > 재고조회</strong></h1>
<table class="table table-bordered add">
	<tr>
		<td>
			<c:if test="${not empty dto.stock_img}">
			<img src="resources/image/${dto.stock_img}" width= "340px" height= "340px">
			</c:if>
			<c:if test="${empty dto.stock_img}">
			<img src="resources/image/no_image.png" width= "340px" height= "340px">
			</c:if>
			
		</td>
		
		<td>
			<table class=" detail">
				<tr>
					<td>상품명</td>
					<td>${dto.stock_name}</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>${dto.stock_price}</td>
				</tr>
				<tr>
					<td>상품위치</td>
					<td>${dto.stock_l}</td>
				</tr>	
			</table>
			<input type="button" value="돌아가기" class="btn btn-primary" onclick="location.href='/spring2/pmlist';">
			<input type="button" value="수정" class="btn btn-success" onclick="location.href='/spring2/edit?seq=${dto.stock_seq}';">
			<form method="POST" action="/spring2/delok" enctype="multipart/form-data">
               
                <input type="submit" value="삭제하기" class="btn btn-success">

                 <input type="hidden" name="stock_seq" value="${dto.stock_seq}">
            </form>.
			<%-- <input type="button" value="삭제하기" class="btn btn-default" onclick="location.href='/spring2/del?seq=${dto.stock_seq}';"> --%>
			<%-- <input type="button" value="삭제하기" class="btn btn-default" onclick="location.href='/del?seq=${dto.stock_seq}';">
			 --%>
					
		</td>
	</tr>
</table>




