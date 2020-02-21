<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="section" id="appcontroller" v-cloak>
            <div class="contents">
                <div class="cnt_top">
                    <p class="tit1">입주권 리스트</p>
                    <a href="/apt/regAptMember"><button type="button" class="btn_top btn1 btn_blue">등록</button></a>
                </div>
                <div class="table1">
                    <table>
                        <tr>
                            <th>매물번호</th>
                            <th>등록일</th>
                            <th>단지</th>
                            <th>신규 동/층</th>
                            <th>기존평형</th>
                            <th>신청평형</th>
                            <th>매매가</th>
                            <th>추가분담금</th>
                            <th>총규모</th>
                            <th>이주비</th>
                            <th>진행정보</th>
                            <th>변경일</th>
                            <th>표출유무</th>
                        </tr>
                        <tr v-for="(post,i) in posts">
                            <td>{{post.apt_code}}</td>
                            <td>{{post.crt_dtm}}</td>
                            <td>{{post.unit_name}}</td>
                            <td>{{post.new_dong}} / {{post.new_level}}</td>
                            <td class="text-right">{{post.origin_pyeong}}</td>
                            <td class="text-right">{{post.room_count}}</td>
                            <td>{{post.trade_price}}</td>
                            <td class="text-right">{{post.add_payment_price}}</td>
                            <td>{{post.addon_price}}</td>
                            <td>{{post.migration_basic}}</td>
                            <td>{{post.progress_cd}}</td>
                            <td>{{post.last_chg_dt}}</td>
                            <td>{{post.use_yn}}</td>
                        </tr>
                    </table>
                </div>
                
                <ul class="paging">
                    <li class="paging_p p_first"><a href="#">처음으로</a></li>
                    <li class="paging_p p_prev"><a href="#">이전</a></li>
                    <li class="on"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li class="paging_p p_next"><a href="#">다음</a></li>
                    <li class="paging_p p_last"><a href="#">마지막</a></li>
                </ul>
                <input type="hidden" id="url" value="/selectAptMemberList">
            </div>
        </div>
<script src="/resources/js/common/comList.js"></script>
