<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<style>
	.add th{ width: 150px;}
	.add td{ width: auto;}
	.add textarea{ resize: none; height: 200px;}
</style>
<!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <!-- include plugin -->
    <script src="[folder where script is located]/[plugin script].js"></script>



<form method="POST" action="/spring2/addok" enctype="multipart/form-data">
<table class="table table-bordered add">

	<tr>
		<th>상품명</th>
		<td><input type ="text" name="stock_name" class="form-control" required></td>
	</tr>
	
	<tr>
		<th>가격</th>
		<td><textarea name="stock_price" class="form-control" required></textarea></td>
	</tr>
	<tr>
		<th>상품위치</th>
		<td><textarea name="stock_l" class="form-control" required></textarea></td>
	</tr>
	<tr>
		<th>상품수량</th>
		<td><textarea name="stock_cnt" class="form-control" required></textarea></td>
	</tr>
	
	<tr>
		<th>사진</th>
		<td><input type="file" name="attach" class="form-control" id="attach"></td>
	</tr>

</table>
<!--  <div class="col-md-10" style="margin-left:150px;">
 	<div id="summernoteContent"></div>
 </div> -->

<br>
<div class = "col-md-10 btns" style="margin-left:150px;">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/spring2/pmlist';">
	<input type="submit" value="작성하기" class="btn btn-default">
</div>

</form>



