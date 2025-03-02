<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="section bg-light">
    <div class="container-fluid" id="app" v-cloak>
        <div class="row">
            <div class="col">
                <h4 class="mb-5">아파트 단지명 등록</h4>

                <!-- 상단 등록 -->
                <form class="" id="regAptUnit" enctype="multipart/form-data" action="/regAptUnit" method="post">
                    <div class="form-group row">
                        <div class="col text-right">
                            <div class="btn btn-dark btn-sm" id="regBtn" v-show="reg_visible" @click="regAptUnit();">등록</div>
                            <div class="btn btn-warning btn-sm" id="modifyBtn" v-show="modify_visible" @click="modifyAptUnit();">수정</div>
                            <div class="btn btn-dark btn-sm" id="clearBtn" @click="clearForm();">초기화</div>
                        </div>
                    </div>
                    <div class="form-group row mb-0">
                        <label class="col-sm-3 col-md-2 col-form-label" for="unit_name">단지명</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="unit_name" maxlength="50" placeholder="단지명을 입력해주세요." name="unit_name">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="note">특징</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="note" maxlength="10" placeholder="특징을 10자 내외로 작성해주세요." name="note">
                        </div>

                        <label class="col-sm-3 col-md-2 col-form-label" for="info">소개</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="text" class="form-control" id="info" maxlength="20" placeholder="소개를 20자 내외로 작성해주세요." name="info">
                        </div>
                        <input type="hidden" id="seq_no" name="seq_no">
                    </div>
                </form>
                <!-- 상단 등록 -->

                <!-- 이미지 -->
                <form id="regImg" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label class="col-sm-3 col-md-2 col-form-label" for="image">이미지 등록</label>
                        <div class="col-md-4 col-sm-9 mb-1">
                            <input type="file" class="form-control" id="image" placeholder="" name="image">
                        </div>
                    </div>
                </form>
                <!-- 이미지 -->

                <!-- 구분 라인 -->
                <div class="row">
                    <div class="col">
                        <div class="border-line"></div>
                    </div>
                </div>
                <!-- 구분 라인 -->

                <!-- 단지명 테이블 -->
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table
                                class="table table-bordered table-hover table-light table-sm">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>번호</th>
                                        <th>단지명</th>
                                        <th>이미지</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(post,i) in posts.content">
                                        <td>{{i + 1}}</td>
                                        <td @click="click(post.unit_name,post.note,post.info,post.seqNo)">{{post.unit_name}}</td>
                                        <td><button class="btn btn-danger btn-sm" role="button" type="button" @click="deleteAptUnit(post.seqNo);">삭제</button></td>
                                    </tr>
                                    <!-- loop -->

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 단지명 테이블 -->


                <!-- 페이징 -->
                <div class="row">
                    <div class="col">
                        <ul class="pagination justify-content-center">
                            <li class="page-item btn-light" v-if="!posts.first"><a class="page-link" @click="decrement();getList()">&lt; 이전</a>
                            <li class="page-item btn-light" v-else-if="!posts.last"><a class="page-link" @click="increment();getList()">다음 &gt;</a></li>
                        </ul>
                    </div>
                </div>
                <!-- 페이징 -->


            </div>
        </div>
    </div>
</section>
<script src="/resources/js/apt/aptUnit.js"></script>
