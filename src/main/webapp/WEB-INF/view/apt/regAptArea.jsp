<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<section class="section bg-light">
    <div class="container-fluid" id="app" v-cloak>
        <div class="row">
            <div class="col">
                <h4 class="mb-5">아파트 단지별 평형 등록</h4>

                <!-- 상단 등록 -->
                <form class="" id="regAptArea">
                    <div class="form-group row">
                        <div class="col text-right">
                            <div class="btn btn-dark btn-sm" @click="regAptArea();" v-show="reg_visible">등록</div>
                            <div class="btn btn-warning btn-sm" @click="modifyAptArea();" v-show="modify_visible">수정</div>
                            <div class="btn btn-dark btn-sm" id="clearBtn" @click="clearForm();">초기화</div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-md-2 col-form-label" for="unit_seq">단지명</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <select id="unit_seq" class="form-control">
                                <option disabled value="">선택</option>
                                <option v-for="option in options" v-bind:value="option.seqNo">{{option.unit_name}}</option>
                            </select>
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="type">타입</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="type" name="type"
                                placeholder="타입을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="pyeong">평형</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="pyeong" name="pyeong"
                                placeholder="평형을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label"
                            for="exclusive_area">전용면적</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="exclusive_area" name="exclusive_area" placeholder="전용면적을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="com_liv_area">주거공급면적</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="com_liv_area"
                                name="com_liv_area" placeholder="주거공급면적을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="com_etc_area">기타공용면적</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="com_etc_area"
                                name="com_etc_area" placeholder="기타공용면적을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="land_portion">대지지분</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="land_portion"
                                name="land_portion" placeholder="대지지분을 입력해주세요.">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="households">세대수</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="households"
                                name="households" placeholder="세대수를 입력해주세요.">
                        </div>
                        <input type="hidden" id="seq_no" name="seq_no">
                    </div>

                </form>
                <form id="regImg" enctype="multipart/form-data">
                    <!-- 이미지 -->
                    <div class="form-group row img-group">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="img-box">
                                <label for="img1"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img1">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="img-box">
                                <label for="img2"><img class="img-fluid" src="" onerror="this.src='/resources/images/no-image.png'" /></label> 
                                <input type="file" class="d-none" id="img2">
                            </div>
                        </div>
                    </div>
                    <!-- 이미지 -->
                </form>
                <!-- 상단 등록 -->

                <!-- 구분 라인 -->
                <div class="row">
                    <div class="col">
                        <div class="border-line"></div>
                    </div>
                </div>
                <!-- 구분 라인 -->


                <!-- 평형 테이블 -->
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table
                                class="table table-bordered table-hover table-light table-sm">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>번호</th>
                                        <th>타입</th>
                                        <th>평형</th>
                                        <th>전용면적</th>
                                        <th>공급면적</th>
                                        <!-- 전용면적 + 주거공용면적 -->
                                        <th>계약면적</th>
                                        <!-- 공급면적 + 기타공용면적 -->
                                        <th>대지지분</th>
                                        <th>이미지1</th>
                                        <th>이미지2</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- loop -->
                                    <tr v-for="(post,i) in posts">
                                        <td>{{i+1}}</td>
                                        <td @click="click(post)">{{post.type}}</td>
                                        <td @click="click(post)">{{post.pyeong}}</td>
                                        <td @click="click(post)">{{post.exclusive_area}}</td>
                                        <td @click="click(post)">{{post.supply_area}}</td>
                                        <td @click="click(post)">{{post.contract_area}}</td>
                                        <td @click="click(post)">{{post.land_portion}}</td>
                                        <td></td>
                                        <td></td>
                                        <td><button class="btn btn-danger btn-sm" role="button" type="button" @click="deleteAptArea(post.seqNo)">삭제</</button></td>
                                        
                                    </tr>
                                    <!-- end loop -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 평형 테이블 -->

            </div>
        </div>
    </div>
</section>
<script src="/resources/js/apt/regAptArea.js"></script>
