<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<section class="section bg-light">
    <div class="container-fluid" id="app" v-cloak>
        <div class="row">
            <div class="col">
                <h4 class="mb-5">분양권</h4>

                <!-- 입력 폼 -->
                <form class="" id="regAptGroup">
                    <!-- 조회 조건 -->
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">매물번호</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="매물번호">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">등록일</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="등록일">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">진행정보</label>
				          	</div>
				          	<select id="unit_seq" class="form-control">
	                            <option disabled value="">진행정보</option>
	                        </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">표출</label>
				          	</div>
				          	<select id="unit_seq" class="form-control">
	                            <option disabled value="">표출</option>
	                        </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">최종변경일</label>
				          	</div>
				          	<select id="unit_seq" class="form-control">
	                            <option disabled value="">최종변경일</option>
	                        </select>
				    	</div>
			    	</div>
                    <!-- 조회 조건 -->

                    <h5 class="">고객정보</h5>
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">성명</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="성명">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">연락번호1</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="연락번호1">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">연락번호2</label>
				          	</div>
				          	<select id="unit_seq" class="form-control">
	                            <option disabled value="">연락번호2</option>
	                        </select>
				    	</div>
			    	</div>
			    	
			    	<h5 class="">분양권정보</h5>
			    	<div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">분양권정보</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="분양권정보">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">단지</label>
				          	</div>
				          	<select class="form-control">
                                <option disabled value="">단지명</option>
                            </select>
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">면적</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="면적">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">평형</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="평형">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">동호수</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="동호수">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">총층</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="총층">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">해당층</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="해당층">
				    	</div>
				    	<div class="input-group mb-2 col-sm-3 col-md-3 col-lg-2 col-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">방향</label>
				          	</div>
				          	<input type="text" name="" value="" class="form-control" placeholder="방향">
				    	</div>
			    	</div>
			    	
			    	<h5 class="">가격정보(만원)</h5>
                    <div class="row mb-5">
                    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">분양가</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="분양가" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">프리미엄</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="프리미엄" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">옵션</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="옵션" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">총규모</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="총규모" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">중도금대출</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="중도금대출" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">기납부금</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="기납부금" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">향후 납부액</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="향후 납부액" name="">
				    	</div>
				    	<div class="input-group mb-2 col-sm-4 col-md-3 col-lg-2">
				        	<div class="input-group-prepend">
				          		<label class="input-group-text" id="" for="">매수준비금</label>
				          	</div>
				          	<input type="text" class="form-control" id="" placeholder="매수준비금" name="">
				    	</div>
			    	</div>
			    	
                    <h5 class="">기타매물정보</h5>
                    <div class="form-group row">
                        <div class="col">
                            <textarea class="form-control" id="" placeholder="기타매물정보" name=""></textarea>
                        </div>
                    </div>

                    <h5 class="">진행 및 면담 정보</h5>
                    <div class="form-group row mb-5">
                        <div class="col">
                            <textarea class="form-control" id="" placeholder="진행 및 면담 정보" name=""></textarea>
                        </div>
                    </div>
                </form>
                <form id="regImg" enctype="multipart/form-data">
                    <!-- 이미지 -->
                    <div class="form-group row img-group">
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img1"><img class="img-fluid" src=""
                                    onerror="this.src='/resources/images/no-image.png'" /></label> <input
                                    type="file" class="d-none" id="img1">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img2"><img class="img-fluid" src=""
                                    onerror="this.src='/resources/images/no-image.png'" /></label> <input
                                    type="file" class="d-none" id="img2">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img3"><img class="img-fluid" src=""
                                    onerror="this.src='/resources/images/no-image.png'" /></label> <input
                                    type="file" class="d-none" id="img3">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="img-box">
                                <label for="img4"><img class="img-fluid" src=""
                                    onerror="this.src='/resources/images/no-image.png'" /></label> <input
                                    type="file" class="d-none" id="img4">
                            </div>
                        </div>
                    </div>
                    <!-- 이미지 -->

                    <!-- 등록 버튼 -->
                    <div class="row mt-2">
                        <div class="col-sm-3 btn btn-dark btn-sm m-auto"
                            @click="regAptGroup();">등록</div>
                    </div>
                    <!-- 등록 버튼 -->
                </form>
                <!-- 입력 폼 -->

            </div>
        </div>
    </div>
</section>
<script src="/resources/js/apt/regAptGroup.js"></script>