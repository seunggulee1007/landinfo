<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import="kr.pe.gizmo80.web.bean.UserBean"%>
<script>
$(function(){

	// 1번째 방법 (속도 같음)
	$('a[href="'+location.pathname+'"]').parent().addClass('active');
	
	// 2번째 방법
	//var objArr = $("#sidebar ul li");
	//for(var i=0; i<objArr.length; i++){
	//	var obj = objArr[i];
	//	if($(obj).find("a").attr("href")==location.pathname){
	//		$(obj).addClass("active");
	//	}else{
	//		$(obj).removeClass("active");
	//	}
	//}
});
</script>

<%

UserBean userBean = (UserBean)session.getAttribute("UserBean");
String user_nm = userBean.getUser_name();

%>
<!-- 사이드 메뉴 -->
<nav id="sidebar">
    <div class="sidebar-header">
        <h4>라인공인중개사</h4>
    </div>
	
    <ul class="list-unstyled components">
        <p><%=user_nm %></p>
        <li><a href="/index">Home</a></li>
        <li><a href="/apt/aptMemberList">입주권</a></li>
        <li><a href="/apt/aptGroupList">분양권</a></li>
        <li><a href="/apt/aptBasicList">아파트</a></li>
        <li><a href="/store/storeList">상가</a></li>
        <li><a href="/other/houseList">주택</a></li>
        <li><a href="/other/buildingList">건물</a></li>
        <li><a href="/other/landList">토지</a></li>
        <li><a href="/apt/regAptUnit">단지등록</a></li>
        <li><a href="/apt/regAptArea">평형등록</a></li>
        <li><a href="/lineNote/lineNoteList">라인노트</a></li>
        <li><a href="/counsel/main_counsel_list">메인상담</a></li>
        <li><a href="/counsel/">물건상담</a></li>
    </ul>
	
</nav>
<!-- //사이드 메뉴 -->
