<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function(){

	});
</script>

<body>
	<div id="app">
		<header>
			<h2 class="container">검색</h2>
		</header>
		
		<div class="container">
			<form v-on:submit.prevent="onSubmit">
				<input type="text" v-model="query" v-on:keyup="onKeyup" placeholder="검색어를 입력하세요">
				<button v-show="query.length" v-on:click="onReset" type="reset" class="btn-reset"></button>
			</form>
			
			<div class="content">
				<div v-if="submitted">
					
				</div>
			</div>
		</div>
	</div>
	
	<script src="https://unpkg.com/vue@2.3.3"></script>
	

</body>
</html>