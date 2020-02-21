<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<section class="section bg-light">
    <div class="container-fluid" id="app" v-cloak>
        <div class="row">
            <div class="col">
                <h4 class="mb-5">조합원 매물(입주권)</h4>

                <!-- 입력 폼 -->
                <form class="">
                   	<!-- 조회 조건 -->
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="apt_code">매물번호</label>
				          	</div>
				          	<input type="text" id="apt_code" name="apt_code" value="" disabled class="form-control" placeholder="매물번호">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">등록일</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="등록일">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="progress_cd">진행정보</label>
				          	</div>
				          	<select class="form-control" id="progress_cd" name="progress_cd">
                                <option>진행정보</option>
                                <option value="1">등록</option>
                                <option value="2">연락</option>
                                <option value="3">진행</option>
                                <option value="4">계약중</option>
                                <option value="5">협의중</option>
                            </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="use_yn">표출</label>
				          	</div>
				          	<select class="form-control" id="use_yn" name="use_yn">
                                <option>표출여부</option>
                                <option value="Y">표출</option>
                                <option value="N">미표출</option>
                            </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">최종변경일</label>
				          	</div>
				          	<input type="text" id="last_chg_dt" placeholder="최종변경일" name="last_chg_dt" class="form-control">
				    	</div>
			    	</div>
                    <!-- 조회 조건 -->
                    
                    <h5 class="">조합원정보</h5>
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">단지</label>
				          	</div>
				          	<select id="unit_seq" class="form-control" v-model="selected">
	                            <option disabled value="">단지명</option>
	                            <option v-for="option in options" v-bind:value="option.seqNo">{{option.unit_name}}</option>
	                        </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">지분면적</label>
				          	</div>
				          	<input type="text" id="origin_area" name="origin_area" value="" class="form-control" placeholder="지분면적">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="pyeong">평형</label>
				          	</div>
				          	<div class="col-md-6 col-lg-3 mb-1">
                                <select class="form-control" v-model="setCombo" id="pyeong" name="pyeong">
                                    <option disabled value="">평형</option>
                                    <option v-for="combo in aptAreaCombo" v-bind:value="combo.seqNo">{{combo.pyeong}}</option>
                                </select>
                            </div>
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="dong">동호수</label>
				          	</div>
				          	<input type="text" id="dong" name="dong" class="form-control" placeholder="동호수">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="level">해당층</label>
				          	</div>
				          	<input type="text" class="form-control" id="level" name="level" placeholder="해당층">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="origin_lease_history">임대내역</label>
				          	</div>
				          	<input type="text" class="form-control" id="origin_lease_history" name="origin_lease_history" placeholder="보증금">
				          	&nbsp; / &nbsp;
				          	<input type="text" class="form-control" id="monthly_price" name="monthly_price" placeholder="월세">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="cust_nm">성명</label>
				          	</div>
				          	<input type="text" id="cust_nm" name="cust_nm" class="form-control" placeholder="성명">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="hnd_no1">연락번호1</label>
				          	</div>
				          	<input type="text" id="hnd_no1" name="hnd_no1" class="form-control" placeholder="연락번호1">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="hnd_no2">연락번호2</label>
				          	</div>
				          	<input type="text" id="hnd_no2" name="hnd_no2" value="" class="form-control" placeholder="연락번호2">
				    	</div>
			    	</div>
                    
                    <h5 class="">신청입주정보</h5>
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_unit_seq">단지</label>
				          	</div>
				          	<select id="new_unit_seq" class="form-control" name="new_unit_seq" v-model="new_selected">
	                            <option disabled value="">단지명</option>
	                            <option v-for="option in options" v-bind:value="option.seqNo">{{option.unit_name}}</option>
	                        </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_area">면적</label>
				          	</div>
				          	<input type="text" id="new_area" name="new_area" value="" class="form-control" placeholder="면적">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_pyeong">평형</label>
				          	</div>
				          	<select class="form-control" v-model="setCombo" id="new_pyeong" name="new_pyeong">
                                <option disabled value="">평형</option>
                                <option v-for="combo in aptAreaCombo" v-bind:value="combo.seqNo">{{combo.pyeong}}</option>
                            </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_dong">동호수</label>
				          	</div>
				          	<input type="text" id="new_dong"  name="new_dong" class="form-control" placeholder="동호수">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_total_level">총층</label>
				          	</div>
				          	<input type="text" class="form-control" id="new_total_level" placeholder="총층" name="new_total_level">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="new_level">해당층</label>
				          	</div>
				          	<input type="text" class="form-control" id="new_level" placeholder="해당층" name="new_level">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="room_way">방향</label>
				          	</div>
				          	<input type="text" class="form-control" id="room_way" placeholder="방향" name="room_way">
				    	</div>
			    	</div>
                    
                    <h5 class="">가격정보(만원)</h5>
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="trade_price">매매가</label>
				          	</div>
				          	<input type="text" class="form-control" id="trade_price" placeholder="매매가" name="trade_price">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="add_payment_price">추가분담금</label>
				          	</div>
				          	<input type="text" class="form-control" id="add_payment_price" placeholder="추가분담금" name="add_payment_price">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="pre_payment_price">기납부액</label>
				          	</div>
				          	<input type="text" class="form-control" id="pre_payment_price" placeholder="기납부액" name="pre_payment_price">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="rent_guarantee">임대보증금</label>
				          	</div>
				          	<input type="text" class="form-control" id="rent_guarantee" placeholder="임대보증금" name="rent_guarantee">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="rent_price">융자</label>
				          	</div>
				          	<input type="text" class="form-control" id="rent_price" placeholder="융자" name="rent_price">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">기본이주비</label>
				          	</div>
				          	<input type="text" class="form-control" id="migration_basic" placeholder="기본이주비" name="migration_basic">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="migration_add">추가이주비</label>
				          	</div>
				          	<input type="text" class="form-control" id="migration_add" placeholder="추가이주비" name="migration_add">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="sum_amt_1">소계1</label>
				          	</div>
				          	<input type="text" class="form-control" id="sum_amt_1" placeholder="소계" name="sum_amt_1">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="expect_taking_price">예상취득세</label>
				          	</div>
				          	<input type="text" class="form-control" id="expect_taking_price" placeholder="예상취득세" name="expect_taking_price">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="brokerage_fee">중개보수료</label>
				          	</div>
				          	<input type="text" class="form-control" id="brokerage_fee" placeholder="중개보수료" name="brokerage_fee">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="legal_costs">법무비용</label>
				          	</div>
				          	<input type="text" class="form-control" id="legal_costs" placeholder="법무비용" name="legal_costs">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="sum_amt_2">소계2</label>
				          	</div>
				          	<input type="text" class="form-control" id="sum_amt_2" placeholder="소계" name="sum_amt_2">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" for="total_expect_amt">예상총준비금</label>
				          	</div>
				          	<input type="text" class="form-control" id="total_expect_amt" placeholder="예상총준비금" name="total_expect_amt">
				    	</div>
			    	</div>

                    <h5 class="">기타매물정보</h5>
                    <div class="form-group row mb-5">
                        <div class="col">
                            <textarea class="form-control" id="detail_note" placeholder="기타매물정보" name="detail_note"></textarea>
                        </div>
                    </div>

                    <h5 class="">진행 및 면담 정보</h5>
                    <div class="form-group row mb-5">
                        <div class="col">
                            <textarea class="form-control" id="manage_note" placeholder="진행 및 면담 정보" name="manage_note"></textarea>
                        </div>
                    </div>
                </form>

                <!-- 이미지 -->
                <form id="regImg" enctype="multipart/form-data">
                    <div class="form-group row img-group">
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img1"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img1">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img2"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img2">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img3"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img3">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img4"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img4">
                            </div>
                        </div>
                    </div>
                    <!-- 이미지 -->

                    <!-- 등록 버튼 -->
                    <div class="row mt-2">
                        <div calss="col-sm-3 btn btn-dark btn-sm m-auto" @click="test();">테스트</div>
                        <div class="col-sm-3 btn btn-dark btn-sm m-auto" @click="regAptMember();">등록</div>
                    </div>
                    <!-- 등록 버튼 -->
                </form>
                <!-- 입력 폼 -->

            </div>
        </div>
    </div>
</section>
<script src="/resources/js/apt/regAptMember.js"></script>