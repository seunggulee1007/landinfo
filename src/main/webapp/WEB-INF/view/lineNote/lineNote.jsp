<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!-- 네이버 스마트에디터  -->
<script src="/resources/smarteditor/js/service/HuskyEZCreator.js"></script>
<section class="section bg-light">
    <div id="app" class="container-fluid" v-cloak>
        <div class="row">
            <div class="col">
                <h4>라인노트 상세</h4>

                <button type="button" class="btn btn-dark btn-sm mb-2" v-show="view_visible" @click="modifyLine();">수정</button>
                <button type="button" class="btn btn-dark btn-sm mb-2" v-show="modify_visible" @click="backModify();">뒤로</button>
                <form action="">
                    <table class="table table-bordered table-light table-sm" v-show="view_visible">
                        <tr>
                            <td>제목</td>
                            <td>{{posts.title}}</td>
                        </tr>
                        <tr>
                            <td>작성자</td>
                            <td>{{posts.crt_id}}</td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td v-html="posts.contents"></td>
                        </tr>

                    </table>
                    
                    <table class="table table-bordered table-light"  v-show="modify_visible">
                        <tr>
                            <td>제목</td>
                            <td><input type="text" id="title" class="form-control" name="title" v-bind:value="posts.title"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td><textarea name="contents" id="contents"  v-html="posts.contents"></textarea></td>
                        </tr>
                    </table>
                    <button type="button" class="btn btn-dark btn-sm mb-2" v-show="modify_visible" @click="modifyLineNote();">수정</button>
                    <input type="hidden" value="${seqNo }" id="seqNo">
                    
                    
                </form>



            </div>
        </div>
    </div>
</section>

<script src="/resources/js/lineNote/lineNote.js" th:inline="javascript"></script>