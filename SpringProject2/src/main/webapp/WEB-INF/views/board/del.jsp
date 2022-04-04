<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   


<style>
	.add th { width: 150px; }
	.add td { width: auto; }
	.add textarea { resize: none; height: 200px; }
</style> 

<form method="POST" action="/spring2/delok" enctype="multipart/form-data">

<div class="btns">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/sprint2/view?stock_seq=${stock_seq}';">
	<input type="submit" value="삭제하기" class="btn btn-default">
</div>

<input type="hidden" name="stock_seq" value="${stock_seq}">

</form>




