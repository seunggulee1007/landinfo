<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 네이버 스마트에디터  -->
<script src="/resources/smarteditor/js/service/HuskyEZCreator.js"></script>
<section class="section bg-light">
    <div class="container-fluid" id="app" v-cloak>
        <div class="row">
            <div class="col">
                <h4>라인노트 등록</h4>

                <form action="/regLineNote">
                    <table class="table table-bordered table-light">
                        <tr>
                            <td>제목</td>
                            <td><input type="text" id="title" class="form-control" name="title"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td><textarea name="contents" id="contents"></textarea></td>
                        </tr>
                    </table>
                </form>

                <!-- 버튼 -->
                <div class="row">
                    <div class="col text-right">
                        <button type="button" id="regLineNote" class="btn btn-dark btn-sm mb-2" @click="regLineNote()">등록</button>
                    </div>
                </div>
                <!-- 버튼 -->

            </div>

        </div>
    </div>
</section>

<script src="/resources/js/lineNote/regLineNote.js"></script>

