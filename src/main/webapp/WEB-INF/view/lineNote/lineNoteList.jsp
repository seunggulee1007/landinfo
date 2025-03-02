<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<section class="section bg-light">
    <div id="appcontroller" class="container-fluid" v-cloak>
        <div class="row">
            <div class="col">
                <h4>라인노트</h4>

                <!-- 버튼 -->
                <div class="row">
                    <div class="col text-right">
                        <a class="btn btn-dark btn-sm mb-2" href="/lineNote/regLineNote" role="button">등록</a>
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
                                        <td>등록일자</td>
                                        <td>제목</td>
                                        <!-- <td>내용</td> -->
                                        <td>게시자</td>
                                </thead>

                                <tbody>
                                    <tr v-for="post in posts">
                                        <td>{{post.crt_dtm}}</td>
                                        <td @click="goContents(post.seqNo)">{{post.title}}</td>
                                        <!-- <td v-html="post.contents"></td> -->
                                        <td>{{post.crt_id}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- 테이블 -->
            </div>
        </div>
    </div>
</section>
<input type="hidden" id="url" value="/selectLineNoteList">
<script src="/resources/js/lineNote/LineNoteList.js"></script>