<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav id="sidebar" class="sidebar js-sidebar">
	<div class="sidebar-content js-simplebar">
		<a class="sidebar-brand" href="index.html"> <span
			class="align-middle">PC방 관리자</span>
		</a>

		<ul class="sidebar-nav">
			<li class="sidebar-header">Pages</li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="/spring/list"> <i class="align-middle"
					data-feather="sliders"></i> <span class="align-middle">전체보기</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="/"> <i class="align-middle"
					data-feather="user"></i> <span class="align-middle">회원관리</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="/spring2/pmain"> <i class="align-middle"
					data-feather="shopping-cart"></i> <span class="align-middle">상품관리</span>
			</a></li>

			<li id="accordionExample" class="sidebar-item">
				<a class="sidebar-link">
				 <i class="align-middle" data-feather="dollar-sign"></i>
				 <span class="align-middle">매출관리</span>
				</a>
			</li>
			
			<div id="collapseOne" style="display:none">
			<ul>
				<li class="sidebar-item" >
					<a class="sidebar-link" href="/spring/slistmonth?month=1">
					 <i class="align-middle" data-feather="hash"></i>
					 <span class="align-middle">매출 조회</span>
					</a>
				</li>
				<li class="sidebar-item">
					<a class="sidebar-link" href="/spring/salesadd">
					 <i class="align-middle" data-feather="hash"></i>
					 <span class="align-middle">요금제 조회</span>
					</a>
				</li>
<!-- 				<li class="sidebar-item"> -->
<!-- 					<a class="sidebar-link" href="slist"> -->
<!-- 					 <i class="align-middle" data-feather="hash"></i> -->
<!-- 					 <span class="align-middle">마감 정산</span> -->
<!-- 					</a> -->
<!-- 				</li> -->
			</ul>
			</div>

			<li class="sidebar-item"><a class="sidebar-link"
				href="pages-blank.html"> <i class="align-middle"
					data-feather="monitor"></i> <span class="align-middle">운영관리</span>
			</a>
	</div>
</nav>

<script>
$(document).ready(function(){
	  $("#accordionExample").click(function(){
	    $("#collapseOne").toggle();
	  });
	});
</script>



