<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="section bg-light">
    <div id="app" class="container-fluid" v-cloak>
        <div class="row">
            <div class="col">
	            <h4>메인상담</h4>
	            
            	<!-- 버튼 -->
                <div class="row">
                    <div class="col text-right">
                        <button class="btn btn-dark btn-sm mb-2" type="button" @click="popup_ing_info()">진행정보</button>
                    </div>
                </div>
                <!-- 버튼 -->
            
            	<!-- 테이블 -->
	            <div class="row">
	                <div class="col">
	                    <div class="table-responsive">
	                        <table class="table table-bordered table-hover table-light table-sm">
	                            <thead class="thead-dark">
	                                <tr>
	                                    <td>등록일자</td>
	                                    <td>종류</td>
	                                    <td>구분</td>
	                                    <td>단지</td>
	                                    <td>동</td>
	                                    <td>호수</td>
	                                    <td>연락처</td>
	                                    <td>최종상담일</td>
	                                    <td>진행정보</td>
	                            </thead>
	                            
	                            <tbody>
	                                <tr v-for="post in posts">
	                                    <td>{{post.crt_dtm}}</td>
	                                    <td>{{post.kinds}}</td>
	                                    <td>{{post.gubun}}</td>
	                                    <td>{{post.unit}}</td>
	                                    <td>{{post.dong}}</td>
	                                    <td>{{post.hnd_no}}</td>
	                                    <td>{{post.last_counsel_td}}</td>
	                                    <td><button class="btn btn-dark mb-2" type="button" @click="popup_ing_info(post.unit_seq)">진행정보</button></td>
	                                    
	                                </tr>
	                            </tbody>
	                        </table>
	                        
	                    </div>
	                </div>
	            </div>
	            <!-- 테이블 -->
	            
            </div>
        </div>
    </div>
</section>
<script src="/resources/js/counsel/counsel_list.js"></script>