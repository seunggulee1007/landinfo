
var app = new Vue({
    el : "#app",
    data : {
        errors         : []                        // 에러 담을 변수
    },
    created : function(){                           // 돔이 로딩 되기 전 실행되는 메서드.
    },
    methods : {
        regBuilding : function(){                   // 건물 등록 메서드(이미지 먼저 등록)
            var form = new FormData($("#regImg")[0]);
            $.ajax({
                url         : "/multifile",         //컨트롤러 URL
                data        : form,
                dataType    : 'json',
                processData : false,
                contentType : false,
                type        : 'POST',
                success     : function (response) {
                    doRegBuilding(response);
                },error     : function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        }
            
    }
});

var deal_cd = $("#deal_cd");
var trade_cd = $("#trade_cd");
var kinds = $("#kinds");
var progress_cd = $("#progress_cd");
var use_yn = $("#use_yn");
var sale_name = $("#sale_name");
var area_size = $("#area_size");
var building_size = $("#building_size");
var level = $("#level");
var total_level = $("#total_level");
var trade_price = $("#trade_price");
var deposit_price = $("#deposit_price");
var monthly_price = $("#monthly_price");
var compl_dt = $("#compl_dt");
var parking_cnt = $("#parking_cnt");
var move_in_dt = $("#move_in_dt");
var rent_price = $("#rent_price");
var now_use = $("#now_use");
var recom_use = $("#recom_use");
var heat_cool_way = $("#heat_cool_way");
var detail_note = $("#detail_note");
var manage_note = $("#manage_note");
var last_chg_dt = $("#last_chg_dt");


function doRegBuilding(img){
    if(!valildation()){
        return;
    }
    $.ajax({
        method : "post",
        url : "/regBuilding",
        data : {
            deal_cd         : deal_cd.val()           // 구분
            ,trade_cd       : trade_cd.val()          // 매매구분
            ,kinds          : kinds.val()             // 종류
            ,progress_cd    : progress_cd.val()       // 진행정보
            ,use_yn         : use_yn.val()            // 표출여부
            ,sale_name      : sale_name.val()         // 매물명
            ,area_size      : area_size.val()         // 토지면적
            ,building_size  : building_size.val()     // 건물면적
            ,level          : level.val()             // 해당층
            ,total_level    : total_level.val()       // 총층
            ,trade_price    : trade_price.val()       // 매매가
            ,deposit_price  : deposit_price.val()     // 보증금
            ,monthly_price  : monthly_price.val()     // 월세
            ,compl_dt       : compl_dt.val()          // 준공연월
            ,parking_cnt    : parking_cnt.val()       // 주차대수
            ,move_in_dt     : move_in_dt.val().replace(/-/gi,"")        // 입주가능일
            ,rent_price     : rent_price.val()        // 대출금
            ,now_use        : now_use.val()           // 현재용도
            ,recom_use      : recom_use.val()         // 추천용도
            ,heat_cool_way  : heat_cool_way.val()     // (냉)난방 방식
            ,detail_note    : detail_note.val()       // 세부정보
            ,manage_note    : manage_note.val()       // 운영정보
            ,last_chg_dt    : last_chg_dt.val().replace(/-/gi,"")       // 최종변경일
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

$(function() {
    $( "#move_in_dt" ).datepicker({
        showButtonPanel: true, 
         currentText: '오늘 날짜', 
         closeText: '닫기', 
         dateFormat: "yy-mm-dd"
    });
});

function validation(){
    if(deal_cd.val() == ""){
        alertify.alert("구분을 선택해 주세요.");
        deal_cd.focus();
        return false;
    }
    if(trade_cd.val() == ""){
        alertify.alert("매매구분을 선택해 주세요.");
        trade_cd.focus();
        return false;
    }
    if(kinds.val() == ""){
        alertify.alert("종류를 선택해 주세요.");
        kinds.focus();
        return false;
    }
    if(progress_cd.val() == ""){
        alertify.alert("진행정보를 선택해 주세요.");
        progress_cd.focus();
        return false;
    }
    if(use_yn.val() == ""){
        alertify.alert("표출구분을 선택해 주세요.");
        use_yn.focus();
        return false;
    }
    if(sale_name.val() == ""){
        alertify.alert("매물명을 입력해 주세요.");
        sale_name.focus();
        return false;
    }

    if(area_size.val() == ""){
        alertify.alert("면적을 입력해 주세요.");
        area_size.focus();
        return false;
    }
    if(building_size.val() == ""){
        alertify.alert("건물 면적을 입력해 주세요.");
        building_size.focus();
        return false;
    }
    if(level.val() == ""){
        alertify.alert("해당 층을 입력해 주세요.");
        level.focus();
        return false;
    }
    if(total_level.val() == ""){
        alertify.alert("총 층을 입력해 주세요.");
        total_level.focus();
        return false;
    }
    if(trade_price.val() == ""){
        alertify.alert("매매가를 입력해 주세요.");
        trade_price.focus();
        return false;
    }
    if(deposit_price.val() == ""){
        alertify.alert("보증금을 입력해 주세요.");
        deposit_price.focus();
        return false;
    }
    if(monthly_price.val() == ""){
        alertify.alert("월세를 입력해 주세요.");
        monthly_price.focus();
        return false;
    }
    if(compl_dt.val() == ""){
        alertify.alert("완공일을 입력해 주세요.");
        compl_dt.focus();
        return false;
    }
    if(parking_cnt.val() == ""){
        alertify.alert("주차 대수를 입력해 주세요.");
        parking_cnt.focus();
        return false;
    }
    if(move_in_dt.val() == ""){
        alertify.alert("입주예정일을 선택해 주세요.");
        move_in_dt.focus();
        return false;
    }
    if(rent_price.val() == ""){
        alertify.alert("대출금을 입력해 주세요.");
        rent_price.focus();
        return false;
    }
    if(now_use.val() == ""){
        alertify.alert("현재 용도를 입력해 주세요.");
        now_use.focus();
        return false;
    }
    if(recom_use.val() == ""){
        alertify.alert("추천 용도를 입력해 주세요.");
        recom_use.focus();
        return false;
    }
    if(heat_cool_way.val() == ""){
        alertify.alert("냉 난방 방식을 입력해 주세요.");
        heat_cool_way.focus();
        return false;
    }
    if(detail_note.val() == ""){
        alertify.alert("세부정볼르 입력해 주세요.");
        detail_note.focus();
        return false;
    }
    if(manage_note.val() == ""){
        alertify.alert("운영정보를 입력해 주세요.");
        manage_note.focus();
        return false;
    }
    if(last_chg_dt.val() == ""){
        alertify.alert("최종변경일을 선택해 주세요.");
        last_chg_dt.focus();
        return false;
    }
    return true;
}