<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import="kr.pe.gizmo80.web.bean.UserBean"%>

<%

UserBean userBean = (UserBean)session.getAttribute("UserBean");
String user_nm = userBean.getUser_name();

%>
<script>
$(document).ready(function(){
    $(".menu").each(function(){
        $(this).click(function(){
            $(this).addClass("on");
            $(this).siblings().removeClass("on");
        });
    });
});
</script>
<div class="header">
    <h1 class="logo"><a href="#">라인공인중개사 관리자</a></h1>
    <div class="header_top">
        <p class="login_info"><span><%=user_nm %></span>님 반갑습니다.</p>
        <button type="button" class="btn_logout">로그아웃</button>
    </div>
</div>
<div id="gnb">
    <button type="button" class="gnb_toggle"></button>
    <div class="gnb_wrap">
        <ul>
            <li id="aptMember"><a href="/apt/aptMemberList">입주권</a></li>
            <li class="menu"><a href="/apt/aptGroupList">분양권</a></li>
            <li class="menu"><a href="/apt/aptBasicList">아파트</a></li>
            <li class="menu"><a href="#">상가</a></li>
            <li class="menu"><a href="#">주택</a></li>
            <li class="menu"><a href="#">건물</a></li>
            <li class="menu"><a href="#">토지</a></li>
            <li class="menu"><a href="#">단지등록</a></li>
            <li class="menu"><a href="#">평형등록</a></li>
            <li class="menu"><a href="#">라인노트</a></li>
            <li class="menu"><a href="#">메인상담</a></li>
            <li class="menu"><a href="#">물건상담</a></li>
        </ul>
    </div>
</div>
<!-- //사이드 메뉴 -->
