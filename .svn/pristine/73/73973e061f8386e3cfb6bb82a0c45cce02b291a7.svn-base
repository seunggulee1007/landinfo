
var app = new Vue({
    el : "#app",
    data : {
        errors         : []                        // 에러 담을 변수
    },
    created : function(){                           // 돔이 로딩 되기 전 실행되는 메서드.
    },
    methods : {
        regLand : function(){                   // 토지 등록 메서드(이미지 먼저 등록)
            var form = new FormData($("#regImg")[0]);
            $.ajax({
                url         : "/multifile",         //컨트롤러 URL
                data        : form,
                dataType    : 'json',
                processData : false,
                contentType : false,
                type        : 'POST',
                success     : function (response) {
                    doRegLand(response);
                },error     : function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        }
            
    }
});


function doRegLand(img){
    $.ajax({
        method : "post",
        url : "/regLand",
        data : {
            deal_cd         : $("#deal_cd").val()           // 구분
            ,trade_cd       : $("#trade_cd").val()          // 매매구분
            ,kinds          : $("#kinds").val()             // 종류
            ,progress_cd    : $("#progress_cd").val()       // 진행정보
            ,use_yn         : $("#use_yn").val()            // 표출여부
            ,sale_name      : $("#sale_name").val()         // 매물명
            ,area_size      : $("#area_size").val()         // 토지면적
            ,land_type      : $("#land_type").val()         // 지목
            ,trade_price    : $("#trade_price").val()       // 매물가(평)
            ,now_use        : $("#now_use").val()           // 현재용도
            ,use_plan       : $("#use_plan").val()          // 토지이용계획
            ,detail_note    : $("#detail_note").val()       // 세부정보
            ,manage_note    : $("#manage_note").val()       // 운영정보
            ,last_chg_dt    : $("#last_chg_dt").val().replace(/-/gi,"")       // 최종변경일
            ,gubun			: $("#gubun").val()				// 매물 구분
            ,image          : img
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