
var app = new Vue({
    el : "#app",
    data : {
        errors         : []                        // 에러 담을 변수
    },
    methods : {
        regStore : function(){                   // 건물 등록 메서드(이미지 먼저 등록)
            var form = new FormData($("#regImg")[0]);
            $.ajax({
                url         : "/multifile",         //컨트롤러 URL
                data        : form,
                dataType    : 'json',
                processData : false,
                contentType : false,
                type        : 'POST',
                success     : function (response) {
                	doRegStore(response);
                },error     : function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        }
            
    }
});


function doRegStore(img){
    $.ajax({
        method : "post",
        url : "/regStore",
        data : {
            deal_cd             : $("#deal_cd").val()           // 구분
            ,trade_cd           : $("#trade_cd").val()          // 매매구분
            ,kinds              : $("#kinds").val()             // 종류
            ,progress_cd        : $("#progress_cd").val()       // 진행정보
            ,use_yn             : $("#use_yn").val()            // 표출여부
            ,store_name         : $("#store_name").val()        // 매물명
            ,lotting_out_area   : $("#lotting_out_area").val()  // 분양면적
            ,exclusive_area     : $("#exclusive_area").val()    // 전용면적
            ,level              : $("#level").val()             // 해당층
            ,total_level        : $("#total_level").val()       // 총층
            ,trade_price        : $("#trade_price").val()       // 매물가
            ,deposit_price      : $("#deposit_price").val()     // 보증금
            ,bath_cnt           : $("#monthly_price").val()     // 월세
            ,compl_dt           : $("#rent_price").val()        // 대출금
            ,deposit_price      : $("#now_store").val()         // 현재업종
            ,monthly_price      : $("#recom_store").val()       // 추천업종
            ,detail_note        : $("#detail_note").val()       // 세부정보
            ,manage_note        : $("#manage_note").val()       // 운영정보
            ,last_chg_dt        : $("#last_chg_dt").val()       // 최종변경일
            ,image              : img
        },
        error : function(error) {
            alertify.alert(error);
        },
        success : function(data) {
            alertify.alert(data.resultMsg);
            location.reload();
        }
    })
}