
var app = new Vue({
    el : "#app",
    data : {
        options : []                                // 단지명 담을 변수
        ,errors : []                                // 에러 담을 변수
        ,selected : ''                              // 단지명 변경 감지 변수
        ,new_selected : ''                          // 신규단지명 변경 감지 변수
        ,setCombo : ''
        ,aptAreaCombo :[]                           // 평형 콤보 담을 변수
        ,new_options: []                            // 신규 단지명
    },
    created : function(){                           // 돔이 로딩 되기 전 실행되는 메서드.
        axios({
            method : "post",
            url : "/getAptUnitCombo"                // 단지명 콤보 가져올 url
        })
        .then(function(response){
            console.log(response);
            this.options = response.data.list       // 기존 단지명 세팅
            this.new_options = response.data.list   // 신규 단지명 세팅
            console.log(this.options);
        }.bind(this))
        .catch(function(e){
            alertify.alert(e);
        });
    },
    methods : {
        regAptGroup : function(){                        // 분양권 등록 메서드(이미지 먼저 등록)
            
            var form = new FormData($("#regImg")[0]);
            
            form.append("img1",$("#img1")[0].files[0]);
            form.append("img2",$("#img2")[0].files[0]);
            form.append("img3",$("#img3")[0].files[0]);
            form.append("img4",$("#img4")[0].files[0]);
            
            if($("#img1").val() == ""){
                alertify.alert("첫번째 이미지를 선택해주세요.");
                return;
            }
            if($("#img2").val() == ""){
                alertify.alert("두번째 이미지를 선택해주세요.");
                return;
            }
            if($("#img3").val() == ""){
                alertify.alert("세번째 이미지를 선택해주세요.");
                return;
            }
            if($("#img4").val() == ""){
                alertify.alert("네번째 이미지를 선택해주세요.");
                return;
            }
            
            $.ajax({
                url: "/multifile",                      //컨트롤러 URL
                data: form,
                dataType: 'json',
                processData: false,
                contentType: false,
                type: 'POST',
                success: function (response) {
                    doRegAptGroup(response);
                },error: function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        },
        getAptAreaCombo : function(){
            axios({
                url : "/getAptAreaCombo",
                method : "post",
                params : {
                    seq_no : this.selected
                }
            })
            .then(function(response){
                this.aptAreaCombo = response.data.list;
            }.bind(this))
        }
            
    },
    watch : {                                           // 감시형  값이 변경될때마다 작동
        selected : function(){
            this.getAptAreaCombo();
        }
    }
});

var unit_seq            = $("#unit_seq");
var trade_cd            = $("#trade_cd");
var pyeong              = $("#pyeong");
var deal_cd             = $("#deal");
var progress_cd         = $("#progress_cd");
var use_yn              = $("#use_yn");
var dong                = $("#dong");
var level               = $("#level");
var total_level         = $("#total_level");
var room_way            = $("#room_way");
var move_in_dt          = $("#move_in_dt");
var trade_price         = $("#trade_price");
var payment_price       = $("#payment_price");
var middle_lone_price   = $("#middle_lone_price");
var add_payment_price   = $("#add_payment_price");
var premium_price       = $("#premium_price");
var pre_option_price    = $("#pre_option_price");
var option_price        = $("#option_price");
var last_chg_dt         = $("#last_chg_dt");
var detail_note         = $("#detail_note");
var manage_note         = $("#manage_note");


function doRegAptGroup(img){
    if(!validation()){
        return;
    }
    $.ajax({
        method : "post",
        url : "/regAptGroup",
        data : {
            dong                   : dong.val()
            ,level                 : level.val()
            ,total_level           : total_level.val()
            ,room_way              : room_way.val()
            ,trade_price           : trade_price.val()
            ,payment_price         : payment_price.val()
            ,middle_lone_price     : middle_lone_price.val()
            ,add_payment_price     : add_payment_price.val()
            ,premium_price         : premium_price.val()
            ,pre_option_price      : pre_option_price.val()
            ,option_price          : option_price.val()
            ,use_yn                : use_yn.val()
            ,unit_seq              : unit_seq.val()
            ,trade_cd              : trade_cd.val()
            ,deal_cd               : deal_cd.val()
            ,pyeong                : pyeong.val()
            ,progress_cd           : progress_cd.val()
            ,last_chg_dt           : last_chg_dt.val().replace(/-/gi,"")
            ,move_in_dt            : move_in_dt.val().replace(/-/gi,"")
            ,detail_note           : detail_note.val()
            ,manage_note           : manage_note.val()
            ,image                 : img
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

function validation() {
    
    if(unit_seq.val() == ""){
        alertify.alert("단지명을 선택해 주세요.");
        unit_seq.focus();
        return false;
    }
    if(trade_cd.val() == ""){
        alertify.alert("매매 구분을 선택해 주세요.");
        trade_cd.focus();
        return false;
    }
    if(pyeong.val() == ""){
        alertify.alert("평형을 선택해 주세요.");
        pyeong.focus();
        return false;
    }
    if(deal_cd.val() == ""){
        alertify.alert("거래구분을 선택해 주세요.");
        deal_cd.focus();
        return false;
    }
    if(use_yn.val() == ""){
        alertify.alert("표출여부를 선택해 주세요.");
        use_yn.focus();
        return false;
    }
    if(dong.val() == ""){
        alertify.alert("해당동을 입력해 주세요.");
        dong.focus();
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
    if(room_way.val() == ""){
        alertify.alert("방향을 입력해 주세요.");
        room_way.focus();
        return false;
    }
    if(move_in_dt.val() == ""){
        alertify.alert("입주예정일을 선택해 주세요.");
        move_in_dt.focus();
        return false;
    }
    if(trade_price.val() == ""){
        alertify.alert("분양가를 선택해 주세요.");
        trade_price.focus();
        return false;
    }
    if(payment_price.val() == ""){
        alertify.alert("본인납부금을 입력해 주세요.");
        payment_price.focus();
        return false;
    }
    if(middle_lone_price.val() == ""){
        alertify.alert("중도금대출액을 입력해 주세요.");
        middle_lone_price.focus();
        return false;
    }
    if(add_payment_price.val() == ""){
        alertify.alert("추가납부금액을 입력해 주세요.");
        add_payment_price.focus();
        return false;
    }
    if(premium_price.val() == ""){
        alertify.alert("프리미엄 금액을 입력해 주세요.");
        premium_price.focus();
        return false;
    }
    if(pre_option_price.val() == ""){
        alertify.alert("옵션기납부 금액을 입력해 주세요.");
        pre_option_price.focus();
        return false;
    }
    if(option_price.val() == ""){
        alertify.alert("옵션 전체 금액을 입력해 주세요.");
        option_price.focus();
        return false;
    }
    if(last_chg_dt.val() == ""){
        alertify.alert("최종변경일을 입력해 주세요.");
        last_chg_dt.focus();
        return false;
    }
    return true;
}