<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
<style>
	[v-cloak] {
  display: none;
}
body{
  margin-top: 100px;
  font-family: 'Trebuchet MS', serif;
  line-height: 1.6
}
.container{
  width: 500px;
  margin: 0 auto;
}
 
 
 
ul.tabs{
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul.tabs li{
  background: none;
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}
 
ul.tabs li.current{
  background: #ededed;
  color: #222;
}
 
.tab-content{
  display: none;
  background: #ededed;
  padding: 15px;
}
 
.tab-content.current{
  display: inherit;
}
</style>
</head>
<body>
<!-- v-cloak :: 로딩 전에 html코드 감추고 싶을때 사용 -->
<div id="app" v-cloak>
	<h1 v-if="value > 5">value 가 5보다 크군요</h1>
	<h1 v-else-if="value === 5">값이 5네요</h1>
	<h1 v-else>5보다 작네요</h1>
	<h2 v-once>초기값 : {{value}}</h2>
	<h2>현재값 :: {{value}}</h2>
	<h1 v-pre>{{이건 그대로 렌더링해줘요}}</h1>
	
	<h2> 오늘 할 일</h2>
	<ul>
		<li v-for="(todo,index) in todos">
			{{index +1 }}번째{{ todo.text}} 
			
		</li>
	</ul>
	<h1>카운터 : {{number}}</h1>
	<button @click="increment">증가1</button>
	<button @click="decrement">감소</button>
	<h1>Hello, {{name}}</h1>
	<input type="text" v-model="name"/>
	<h2>{{ Date() }}</h2>
	<h3><input type="checkbox" v-model="flag" id="teayeon"/><label for="teayeon">봄봄이 이뻐</label></h3>
	<img v-bind:src="flag ? feelsgood : feelsogood"/>
	
	<br>
	<ul class="tabs">
	    <li class="tab-link current" data-tab="tab-1"><a href="#tab-1" @click="getList(1)">입주권</a></li>
	    <li class="tab-link" data-tab="tab-2"><a href="#tab-2" @click="getList(2)">분양권</a></li>
	    <li class="tab-link" data-tab="tab-3"><a href="#tab-3" @click="getList(3)">아파트</a></li>
	    <li class="tab-link" data-tab="tab-4"><a href="#tab-4" @click="getList(4)">상가</a></li>
	    <li class="tab-link" data-tab="tab-5"><a href="#tab-5" @click="getList(5)">주택</a></li>
	    <li class="tab-link" data-tab="tab-6"><a href="#tab-6" @click="getList(6)">건물</a></li>
	    <li class="tab-link" data-tab="tab-7"><a href="#tab-7" @click="getList(7)">토지</a></li>
  	</ul>
 
	<table>
		<tr id="tab-1" class="tab-content current">
			<th>매물번호</th>
			<th>등록일</th>
			<th>단지</th>
			<th>동/층</th>
			<th>신청평형</th>
			<th>매매가</th>
			<th>예상분담금</th>
			<th>총규모</th>
			<th>이주비</th>
			<th>진행정보</th>
			<th>변경일</th>
			<th>표출유무</th>
		</tr>
  
		<tr id="tab-2" class="tab-content">
			<th>매물번호</th>
			<th>등록일</th>
			<th>단지</th>
			<th>동/층</th>
			<th>분양가</th>
			<th>프리미엄</th>
			<th>총규모</th>
			<th>초기필요자금</th>
			<th>진행정보</th>
			<th>변경일</th>
			<th>표출유무</th>
		</tr>
		<tr id="tab-3" class="tab-content">
	
		</tr>
		<tr id="tab-4" class="tab-content">
	
		</tr>
		<tr id="tab-5" class="tab-content">
	
		</tr>
		<tr id="tab-6" class="tab-content">
	
		</tr>
		<tr id="tab-7" class="tab-content">
	
		</tr>
		
			
		<tr v-for="(post,i) in posts.data">
			<td>{{post.apt_code}}</td>
			<td>{{post.dong}}</td>
			<td>{{post.floor}}</td>
			<td>{{post.total_floor}}</td>
			<td>{{post.room_way}}</td>
			<td>{{post.room_count}}</td>
			<td>{{post.restroom_count}}</td>
			<td>{{post.trade_price}}</td>
			<td>{{post.rent_guarantee}}</td>
			<td>{{post.rent_price}}</td>
			<td>{{post.tax}}</td>
			<td>{{post.guarantee}}</td>
		</tr>
	</table>
</div>



<script src="/js/test.js"></script>
</body>
</html>