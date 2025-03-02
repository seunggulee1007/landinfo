<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="section bg-light">
    <div id="appcontroller" class="container-fluid" v-cloak>
        <div class="row">
            <div class="col">
                <h4>아파트 목록</h4>

                <!-- 버튼 -->
                <div class="row">
                    <div class="col text-right">
                        <a class="btn btn-dark btn-sm mb-2" href="/apt/regAptBasic"
                            role="button">등록</a>
                    </div>
                </div>
                <!-- 버튼 -->

                <!-- 테이블 -->
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table
                                class="table table-bordered table-hover table-light table-sm">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>매물번호</th>
                                        <th>등록일</th>
                                        <th>단지</th>
                                        <th>평형</th>
                                        <th>동/층</th>
                                        <th>매매가</th>
                                        <th>보증금</th>
                                        <th>월세</th>
                                        <th>대출금</th>
                                        <th>초기필요자금</th>
                                        <th>진행정보</th>
                                        <th>변경일</th>
                                        <th>표출유무</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <!-- 초기필요자금 = 매매가 -보증금-대출금 -->
                                    <!-- loop -->
                                    <tr v-for="(post,i) in posts">
                                        <td>{{post.apt_code}}</td>
                                        <td>{{post.crt_dtm}}</td>
                                        <td>{{post.unit_nm}}</td>
                                        <td>{{post.pyeong_nm}}</td>
                                        <td>{{post.dong}} / {{post.level}}</td>
                                        <td class="text-right">{{post.trade_price}}</td>
                                        <td class="text-right">{{post.rent_guarantee}}</td>
                                        <td class="text-right">등록화면에서 입력필드 없음</td>
                                        <td>{{post.rent_price}}</td>
                                        <td>{{post.rent_price}}</td>
                                        <td>{{post.progress_cd}}</td>
                                        <td>{{post.last_chg_dt}}</td>
                                        <td>{{post.use_yn}}</td>
                                    </tr>
                                    <!-- loop -->

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 테이블 -->

                <!-- 페이징 -->
                <!-- <div class="row">
                    <div class="col">
                        <ul class="pagination justify-content-center">
                            <li class="page-item btn-light" v-if="!posts.first"><a class="page-link" @click="decrement();getList()" >&lt; 이전</a>
                            <li class="page-item btn-light" v-else-if="!posts.last"><a class="page-link" @click="increment();getList()" >다음 &gt;</a></li>
                        </ul>
                    </div>
                </div> -->
                <!-- 페이징 -->

                <input type="hidden" id="url" value="/selectAptBasicList">
            </div>
        </div>
    </div>
</section>
<script src="/resources/js/common/comList.js"></script>