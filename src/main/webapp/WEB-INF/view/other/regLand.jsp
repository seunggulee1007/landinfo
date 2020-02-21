<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<section class="section bg-light" id="app" v-cloak>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h4 class="mb-5">토지</h4>
                   
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
                                    </select> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-5 offset-1">
                            <div class="form-group row">
                                <div class="col-md-12 col-lg-6 mb-1">
                                    <select class="form-control" id="progress_cd" name="progress_cd">
                                        <option disabled value="">진행정보</option>
                                        <option value="1">등록</option>
                                        <option value="2">연락</option>
                                        <option value="3">진행</option>
                                        <option value="4">계약중</option>
                                        <option value="5">협의중</option>
                                    </select>
                                </div>
                                <div class="col-md-12 col-lg-6 mb-1">
                                    <select class="form-control" id="use_yn" name="use_yn">
                                        <option disabled value="">표출여부</option>
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
                            <input type="text" class="form-control" id="area_size" placeholder="면적" name="area_size">
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
                            <input type="text" class="form-control" id="land_type" placeholder="지목" name="land_type">
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
                            <input type="text" class="form-control" id="trade_price" placeholder="매물가(평)" name="trade_price">
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
                            <input type="text" class="form-control" id="now_use" placeholder="현재용도" name="now_use">
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
                            <input type="text" class="form-control" id="use_plan" placeholder="토지이용계획" name="use_plan">
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-2 mb-1">
                            <input type="text" class="form-control" id="last_chg_dt" placeholder="최종변경일" name="last_chg_dt">
                        </div>
                    </div>
                    
                    <h4 class="">세부정보</h4>
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
                    <input type="hidden" id="gubun" name="gubun" value="5">
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
                        <div class="col-sm-3 btn btn-dark btn-sm m-auto" @click="regLand();">등록</div>                    
                    </div>
                    <!-- 등록 버튼 -->
                    
                </form>
                <!-- 입력 폼 -->
                   
                
            </div>
        </div>
    </div>
</section>
<script src="/resources/js/other/regLand.js"></script>