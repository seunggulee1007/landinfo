<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="section bg-light">
    <div class="container-fluid" id="appcontroller" v-cloak>
        <div class="row">
            <div class="col">
                <h4>주택 목록</h4>
      
                  <!-- 버튼 -->
                <div class="row">
                    <div class="col text-right">
                        <a class="btn btn-dark btn-sm mb-2" href="/other/regHouse" role="button">등록</a>
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
                                        <th>매물번호</th>
                                        <th>등록일</th>
                                        <th>구분</th>
                                        <th>종류</th>
                                        <th>매물명</th>
                                        <th>토지면적</th>
                                        <th>건물면적</th>
                                        <th>해당층/총층</th>
                                        <th>매물가</th>
                                        <th>진행정보</th>
                                        <th>변경일</th>
                                        <th>표출유무</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                    <!-- loop -->
                                    <tr v-for="post in posts">
                                        <td>{{post.sale_code}}</td>
                                        <td>{{post.crt_dtm}}</td>
                                        <td>{{post.deal_cd}}</td>
                                        <td>{{post.kinds}}</td>
                                        <td>{{post.sale_name}}</td>
                                        <td>{{post.area_size}}</td>
                                        <td>{{post.building_size}}</td>
                                        <td>{{post.level}} / {{post.total_level}}</td>
                                        <td>{{post.trade_price}}</td>
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
                <input type="hidden" id="url" value="/selectHouseList">
            </div>
        </div>
    </div>
</section>

<script src="/resources/js/common/comList.js"></script>