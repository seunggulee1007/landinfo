<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/js/common/datePicker.js"></script>
<div class="section" id="app" v-cloak>
            <div class="contents">
                <ul class="input_list1 list_5ea">
                    <li>
                        <label><span>매물번호</span></label>
                        <input type="text">
                    </li>
                    <li>
                        <label><span>등록일</span></label>
                        <input type="text" class="datepicker">
                    </li>
                    <li>
                        <label><span>진행정보</span></label>
                        <select name="progress_cd" id="progress_cd">
                            <option>진행정보</option>
                            <option value="1">등록</option>
                            <option value="2">연락</option>
                            <option value="3">진행</option>
                            <option value="4">계약중</option>
                            <option value="5">협의중</option>
                        </select>
                    </li>
                    <li>
                        <label><span>표출</span></label>
                        <select name="use_yn" id="use_yn">
                            <option>표출여부</option>
                            <option value="Y">표출</option>
                            <option value="N">미표출</option>
                        </select>
                    </li>
                    <li>
                        <label><span>최종변경일</span></label>
                        <input type="text" class="datepicker" id="last_chg_dt" name="last_chg_dt">
                    </li>
                </ul>
               
                <div class="cnt_top">
                    <p class="tit1">고객정보</p>
                </div>
                <div class="input_list2 list_6ea">
                    <ul>
                        <li>
                            <label for=""><span>성명</span></label>
                            <div>
                                <input type="text" id="cust_nm" name="cust_nm" maxlength="30">
                            </div>
                        </li>
                        <li class="conspan3">
                            <label for=""><span>연락처1</span></label>
                            <div class="phone">
                                <input type="text" id="hnd_no1_1" name="hnd_no1_1" maxlength="4">
                                <span>-</span>
                                <input type="text" id="hnd_no1_2" name="hnd_no1_2" maxlength="4">
                                <span>-</span>
                                <input type="text" id="hnd_no1_3" name="hnd_no1_3" maxlength="4">
                            </div>
                        </li>
                        <li class="conspan3">
                            <label for=""><span>연락처2</span></label>
                            <div class="phone">
                                <input type="text" id="hnd_no2_1" name="hnd_no2_1" maxlength="4">
                                <span>-</span>
                                <input type="text" id="hnd_no2_2" name="hnd_no2_2" maxlength="4">
                                <span>-</span>
                                <input type="text" id="hnd_no2_3" name="hnd_no2_3" maxlength="4">
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="cnt_top">
                    <p class="tit1">아파트정보</p>
                </div>
                
                <div class="input_list2 list_5ea list_5ea_3">
                    <ul>
                        <li>
                            <label><span>입주예정일</span></label>
                            <div>
                                <input type="text" class="datepicker" id="move_in_dt" name="move_in_dt">
                            </div>
                        </li>    
                        <li>
                            <label for=""><span>단지</span></label>
                            <div>
                                <select id="unit_seq" class="form-control" v-model="selected">
                                    <option disabled value="">단지명</option>
                                    <option v-for="option in options" v-bind:value="option.seqNo">{{option.unit_name}}</option>
                                </select>
                            </div>
                        </li>    
                        <li>
                            <label for="origin_area"><span>면적</span></label>
                            <div><input type="text" id="origin_area" name="origin_area"></div>
                        </li>    
                        <li>
                            <label for="pyeong"><span>평형</span></label>
                            <div>
                                <select class="form-control" v-model="setCombo" id="pyeong" name="pyeong">
                                    <option disabled value="">평형</option>
                                    <option v-for="combo in aptAreaCombo" v-bind:value="combo.seqNo">{{combo.pyeong}}</option>
                                </select>
                            </div>
                        </li>  
                        <li>
                            <label for="dong"><span>동호수</span></label>
                            <div><input type="text" id="dong" name="dong" maxlength="8"></div>
                        </li>  
                    </ul>
                    <ul>
                        <li>
                            <label for="total_level"><span>총층</span></label>
                            <div><input type="text" id="total_level" name="total_level" maxlength="3"></div>
                        </li>  
                        <li>
                            <label for="level"><span>해당층</span></label>
                            <div><input type="text" id="level" name="level" maxlength="3"></div>
                        </li>
                        <li>
                            <label for="room_way"><span>방향</span></label>
                            <div><input type="text" id="room_way" name="room_way" maxlength="4"></div>
                        </li>
                        <li>
                            <label for="room_count"><span>방수</span></label>
                            <div><input type="text" id="room_count" name="room_count" maxlength="2"></div>
                        </li>
                        <li>
                            <label for="restroom_count"><span>욕실수</span></label>
                            <div><input type="text" id="restroom_count" name="restroom_count" maxlength="2"></div>
                        </li>
                    </ul>
                </div>
                
                <div class="cnt_top">
                    <p class="tit1">가격정보(만원)</p>
                </div>
                
                <div class="input_list2 list_5ea list_5ea_2">
                    <ul>
                        <li>
                            <label><span class="th1">매매가</span></label>
                            <div><input type="text" id="trade_price" name="trade_price" maxlength="15"></div>
                        </li>    
                        <li>
                            <label for=""><span>임대내역</span></label>
                            <div><input type="text" id="lease_history" name="lease_history"></div>
                        </li>    
                        <li>
                            <label for=""><span>대출금</span></label>
                            <div><input type="text" id="rent_price" name="rent_price"></div>
                        </li>    
                        <li>
                            <label for=""><span>예상취득세</span></label>
                            <div><input type="text" id="expect_tax" name="expect_tax"></div>
                        </li> 
                        <li>
                            <label for="guarantee"><span>중개보수료</span></label>
                            <div><input type="text" id="guarantee" name="guarantee"></div>
                        </li>  
                    </ul>
                    <ul>
                        <li>
                            <label for="law_guarantee"><span>법무비용</span></label>
                            <div><input type="text" id="law_guarantee" name="law_guarantee"></div>
                        </li>
                        <li>
                            <label for="other_price"><span>기타비용</span></label>
                            <div><input type="text" id="other_price" name="other_price"></div>
                        </li>
                        <li>
                            <label for=""><span class="th_total">매수준비금</span></label>
                            <div><input type="text"></div>
                        </li>
                    </ul>
                </div>
                
                <div class="cnt_top">
                    <p class="tit1">기타매물정보</p>
                </div>
                <div class="input_list3">
                    <div class="input_list3_1 input_list2 input_list2_whole">
                        <div class="ta_wrap">
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                 
                    <div class="input_list3_2">
                        <ul class="input_photo">
                            <li><label><span>이미지를 등록하려면<br>클릭해주세요</span></label><input type="file"></li>
                            <li><label><span>이미지를 등록하려면<br>클릭해주세요</span></label><input type="file"></li>
                            <li><label><span>이미지를 등록하려면<br>클릭해주세요</span></label><input type="file"></li>
                            <li><label><span>이미지를 등록하려면<br>클릭해주세요</span></label><input type="file"></li>
                        </ul>
                    </div>
                </div>
                   
                <div class="cnt_top">
                    <p class="tit1">진행 및 면담 정보</p>
                </div>
                <div class="input_list2 input_list2_whole2">
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>
               
                <div class="btnset_center">
                    <button type="submit" class="btn_top btn1 btn_blue">등록/저장</button>
                    <button type="reset" ty class="btn_top btn1 btn_gray">전체정보삭제</button>
                </div>
            </div>
        </div>
        <!--contents : e-->
        
<script src="/resources/js/apt/regAptBasic.js"></script>