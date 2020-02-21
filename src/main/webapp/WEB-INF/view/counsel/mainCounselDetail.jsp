<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="section bg-light">
    <div class="container-fluid" id="app">
          <div class="row">
              <div class="col">
                  <h4 class="mb-5">진행정보</h4>
  
                  
                   <!-- 등록 -->
                   <form class="" id="regAptUnit" enctype="multipart/form-data" action="/regAptUnit" method="post">
                       <div class="row">
                           <div class="col">
                               <div class="form-group row">
                                   <div class="col-sm-6 col-md-3 col-lg-3 mb-1">
                                       <input id="" class="form-control" placeholder="등록일자">
                                   </div>
                                   <div class="col-sm-6 col-md-3 col-lg-3 mb-1">
                                       <select class="form-control">
                                           <option disabled>구분</option>
                                           <option value = "1">접수</option>
                                           <option value = "2">진행</option>
                                           <option value = "3">완료</option>
                                       </select>
                                   </div>
                               </div>
                           </div>
                       </div>
                   
                	   <!-- 버튼 -->
                       <div class="form-group row">
                           <div class="col text-right">
                               <div class="btn btn-dark btn-sm" id="regBtn" @click="">저장</div>
                               <div class="btn btn-warning btn-sm" id="modifyBtn" @click="">수정</div>
                               <div class="btn btn-dark btn-sm" id="clearBtn" @click="">초기화</div>
                           </div>
                       </div>
                       <!-- 버튼 -->
                        
                        
                       <div class="form-group row">
                           <label class="col-sm-3 col-md-2 col-form-label" for="">종류</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="종류" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">구분</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="구분" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">단지</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="단지" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">동</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="동" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">호수</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="호수" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">연락처</label>
                           <div class="col-md-4 col-sm-9 mb-1">
                               <input type="text" class="form-control" id="" maxlength="50" placeholder="연락처" name="">
                           </div>
                           
                           <label class="col-sm-3 col-md-2 col-form-label" for="">운영정보</label>
                           <div class="col-md-10 col-sm-9 mb-1">
                               <textarea class="form-control" id="" maxlength="50" placeholder="운영정보" name=""></textarea>
                           </div>
                       </div>
                   </form>
                   <!-- 등록 -->
                     
                   <!-- 테이블 -->
                   <div class="row">
                       <div class="col">
                           <div class="table-responsive">
                               <table class="table table-bordered table-hover table-light table-sm">
                                   <thead class="thead-dark">
                                       <tr>
                                           <td>번호</td>
                                           <td>상담일자</td>
                                           <td>내용</td>
                                       </tr>
                                   </thead>
                                   
                                   <tbody>
                                       <tr>
                                           <td>1</td>
                                           <td>2018-08-16</td>
                                           <td>내용입니다.</td>
                                       </tr>
                                       <tr>
                                           <td>2</td>
                                           <td>2018-08-16</td>
                                           <td>내용입니다.</td>
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