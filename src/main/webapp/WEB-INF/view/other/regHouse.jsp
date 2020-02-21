<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<section class="section bg-light">
	<div class="container-fluid" id="app">
	   	<div class="row">
	       	<div class="col">
	           	<h4 class="mb-5">주택</h4>
	               
	            <!-- 입력 폼 -->
	            <form class="">
	                <!-- 조회 조건 -->
	                <div class="row">
                    	<div class="col-6">
                        	<div class="form-group row">
                                <div class="col-md-6 col-lg-3 mb-1">
                                    <select id="deal_cd" name="deal_cd" class="form-control">
                                        <option disabled value="">구분</option>
                                        <option value="1">매매</option>
                                        <option value="2">전세</option>
                                        <option value="3">월세</option>
                                        <option value="4">단기임대</option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-lg-3 mb-1">
                                    <select class="form-control" id="trade_cd" name="trade_cd">
                                        <option value = "1">매도</option>
                                        <option value = "2">매수</option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-lg-3 mb-1">
                                     <select class="form-control" id="kinds" name="kinds">
                                        <option disabled value="">종류</option>
                                        <option value="1">빌라/연립</option>
                                    </select> 
                                </div>
                            </div>
                        </div>
	                    
                        <div class="col-5 offset-1">
                        	<div class="form-group row">
                                <div class="col-md-12 col-lg-6 mb-1">
                                    <select class="form-control" id="progress_cd" name="progress_cd">
                                        <option>진행정보</option>
                                        <option value="1">등록</option>
                                        <option value="2">연락</option>
                                        <option value="3">진행</option>
                                        <option value="4">계약중</option>
                                        <option value="5">협의중</option>
                                    </select>
                                </div>
                                <div class="col-md-12 col-lg-6 mb-1">
                                    <select class="form-control" id="use_yn" name="use_yn">
                                        <option>표출여부</option>
                                        <option value="Y">표출</option>
                                        <option value="N">미표출</option>
                                    </select>
                                </div>
                            </div>
                        </div>
	                </div>
	                <!-- 조회 조건 -->
	                
	                <h5 class="">매물정보</h5>
	                <div class="form-group row">
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="sale_name" placeholder="매물명" name="sale_name">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="area_size" placeholder="토지면적" name="area_size">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="building_size" placeholder="건물면적" name="building_size">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="level" placeholder="해당층" name="level">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="total_level" placeholder="총층" name="total_level">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="trade_price" placeholder="매물가" name="trade_price">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="rooms_cnt" placeholder="방수" name="rooms_cnt">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="bath_cnt" placeholder="욕실수" name="bath_cnt">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="compl_dt" placeholder="준공연월" name="compl_dt">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="parking_cnt" placeholder="주차" name="parking_cnt">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="deposit_price" placeholder="보증금" name="deposit_price">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="monthly_price" placeholder="월세" name="monthly_price">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                        <input type="text" class="form-control" id="rent_price" placeholder="대출금" name="rent_price">
	                    </div>
	                    <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
	                       <input type="text" class="form-control" id="last_chg_dt" name="last_chg_dt" placeholder="최종변경일">
	                    </div>
	                </div>
	                
	                <h5 class="">세부정보</h5>
	                <div class="form-group row">
	                    <div class="col">
	                        <textarea  class="form-control" id="detail_note" placeholder="세부정보" name="detail_note"></textarea>
	                    </div>
	                </div>
	                
	                <h5 class="">운영정보</h5>
	                <div class="form-group row">
	                    <div class="col">
	                        <textarea class="form-control" id="manage_note" placeholder="운영정보" name="manage_note"></textarea>
	                    </div>
	                </div>
	                <input type="hidden" id="gubun" name="gubun" value="3">
	            </form>
	            
	            <form id="regImg" enctype="multipart/form-data">
	                <!-- 이미지 -->
	                <div class="form-group row img-group">
	                    <div class="col-3">
	                    	<div class="img-box">
	                    		<label for="img1"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'"/></label>
	                        	<input type="file" class="d-none" id="img1">
	                    	</div>
	                    </div>
	                    <div class="col-3">
	                    	<div class="img-box">
		                        <label for="img2"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'"/></label>
		                        <input type="file" class="d-none" id="img2">
	                        </div>
	                    </div>
	                    <div class="col-3">
	                    	<div class="img-box">
		                        <label for="img3"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'"/></label>
		                        <input type="file" class="d-none" id="img3">
	                        </div>
	                    </div>
	                    <div class="col-3">
	                    	<div class="img-box">
		                        <label for="img4"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'"/></label>
		                        <input type="file" class="d-none" id="img4">
	                        </div>
	                    </div>
	                </div>
	            	<!-- 이미지 -->
	                
	                <!-- 등록 버튼 -->
	                <div class="row mt-2">
						<div class="col-sm-3 btn btn-dark btn-sm m-auto" @click="regHouse();">등록</div>	                
	                </div>
	                <!-- 등록 버튼 -->
	                
	            </form>
	            <!-- 입력 폼 -->
	               
	               
	        </div>
	    </div>
	</div>
</section>

<script src="/resources/js/other/regHouse.js"></script>