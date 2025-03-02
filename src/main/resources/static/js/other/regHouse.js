
var app = new Vue({
    el : "#app",
    data : {
        errors         : []                         // 에러 담을 변수
    },
    methods : {
        regHouse : function(){                      // 건물 등록 메서드(이미지 먼저 등록)
            var form = new FormData($("#regImg")[0]);
            $.ajax({
                url         : "/multifile",         //컨트롤러 URL
                data        : form,
                dataType    : 'json',
                processData : false,
                contentType : false,
                type        : 'POST',
                success     : function (response) {
                    doRegHouse(response);
                },error     : function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        }
            
    }
});


function doRegHouse(img){
    $.ajax({
        method : "post",
        url : "/regHouse",
        data : {
            deal_cd         : $("#deal_cd").val()           // 구분
            ,trade_cd       : $("#trade_cd").val()          // 매매구분
            ,kinds          : $("#kinds").val()             // 종류
            ,progress_cd    : $("#progress_cd").val()       // 진행정보
            ,use_yn         : $("#use_yn").val()            // 표출여부
            ,sale_name      : $("#sale_name").val()         // 매물명
            ,area_size      : $("#area_size").val()         // 토지면적
            ,building_size  : $("#building_size").val()     // 건물면적
            ,level          : $("#level").val()             // 해당층
            ,total_level    : $("#total_level").val()       // 총층
            ,trade_price    : $("#trade_price").val()       // 매물가
            ,rooms_cnt      : $("#rooms_cnt").val()         // 방수
            ,bath_cnt       : $("#bath_cnt").val()          // 욕실수
            ,compl_dt       : $("#compl_dt").val()          // 준공연월
            ,deposit_price  : $("#deposit_price").val()     // 보증금
            ,monthly_price  : $("#monthly_price").val()     // 월세
            ,rent_price     : $("#rent_price").val()        // 대출금
            ,detail_note    : $("#detail_note").val()       // 세부정보
            ,manage_note    : $("#manage_note").val()       // 운영정보
            ,last_chg_dt    : $("#last_chg_dt").val().replace(/-/gi,"")       // 최종변경일
            ,gubun          : $("#gubun").val()             // 매물 구분
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