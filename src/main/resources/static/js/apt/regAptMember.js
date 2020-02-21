
var app = new Vue({
    el : "#app",
    data : {
        options : []                                // 단지명 담을 변수
        ,errors : []                                // 에러 담을 변수
        ,selected : ''                              // 단지명 변경 감지 변수
        ,setCombo : ''
        ,new_selected : ''                          // 신규단지명 변경 감지 변수
        ,aptAreaCombo :[]                           // 평형 콤보 담을 변수
        ,new_options: []                            // 신규 단지명
        ,aptAreaCombo1 : []
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
        regAptMember : function(){                  // 평형 등록 메서드
            
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
                url: "/multifile",                  //컨트롤러 URL
                data: form,
                dataType: 'json',
                processData: false,
                contentType: false,
                type: 'POST',
                success: function (response) {
                  console.log(response);
                  doRegAptMember(response);
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
        },
        getAptAreaCombo1 : function(){
            axios({
                url : "/getAptAreaCombo",
                method : "post",
                params : {
                    seq_no : this.new_selected
                }
            })
            .then(function(response){
                this.aptAreaCombo1 = response.data.list;
            }.bind(this))
        },
        test : function (){
            var formdata = $("#regImg").serializeArray();
            console.log(formdata);
        }
        
            
    },
    watch : {                                      // 감시형  값이 변경될때마다 작동
        selected : function(){
            this.getAptAreaCombo();
        },
        new_selected : function(){
            this.getAptAreaCombo1();
        }
    }
});


var unit_seq                = $("#unit_seq");               // 단지명
var trade_cd                = $("#trade_cd");               // 매매 구분
var pyeong                  = $("#pyeong");                 // 평형
var deal_cd                 = $("#deal_cd");                // 거래구분
var progress_cd             = $("#progress_cd");            // 진행정보
var use_yn                  = $("#use_yn");                 // 표출여부
var last_chg_dt             = $("#last_chg_dt");            // 최종변경일
var origin_area             = $("#origin_area");            // 기존면적
var level                   = $("#level");                  // 해당층
var total_level             = $("#total_level");            // 총층
var origin_lease_history    = $("#origin_lease_history");   // 기존 임대 내역
var new_unit_seq            = $("#new_unit_seq");           // 신규 단지명
var new_area                = $("#new_area");               // 신규 면적
var new_dong                = $("#new_dong");               // 신규 해당 동
var new_level               = $("#new_level");              // 신규 해당 층
var new_total_level         = $("#new_total_level");        // 신규 총 층
var room_way                = $("#room_way");               // 방향
var trade_price             = $("#trade_price");            // 매매가
var rent_guarantee          = $("#rent_guarantee");         // 임대보증금
var rent_price              = $("#rent_price");             // 대출금
var migration_basic         = $("#migration_basic");        // 이주비(기본)
var migration_add           = $("#migration_add");          // 이주비(추가)
var add_payment_price       = $("#add_payment_price");      // 추가납부금
var pre_payment_price       = $("#pre_payment_price");      // 기납부금
var expect_taking_price     = $("#except_taking_price");    // 예상 취득세
var brokerage_fee           = $("#brokerage_fee");          // 중개 수수료
var legal_costs             = $("#legal_costs");            // 법무 비용
var detail_note             = $("#detail_note");            // 세부내용
var manage_note             = $("#manage_note");            // 운영내용


function doRegAptMember(img){

    if(!validation()){
        return;
    }
    
    $.ajax({
        method : "post",
        url : "/regAptMember",
        data : { 
            unit_seq                : $("#unit_seq").val()                  // 단지명 일련번호 
            ,trade_cd               : $("#trade_cd").val()                  // 매도 매수 여부
            ,pyeong                 : $("#pyeong").val()                    // 평형
            ,deal_cd                : $("#deal_cd").val()                   // 거래구분
            ,progress_cd            : $("#progress_cd").val()               // 진행정보
            ,use_yn                 : $("#use_yn").val()                    // 표출여부
            ,last_chg_dt            : $("#last_chg_dt").val().replace(/-/gi,"")  // 최종변경일
            ,origin_area            : $("#origin_area").val()               // 기존면적
            ,level                  : $("#level").val()                     // 해당층
            ,total_level            : $("#total_level").val()               // 총층
            ,origin_lease_history   : $("#origin_lease_history").val()      // 기존 임대 내역
            ,new_unit_seq           : $("#new_unit_seq").val()              // 신규 단지명
            ,new_area               : $("#new_area").val()                  // 신규 면적
            ,new_dong               : $("#new_dong").val()                  // 신규 동
            ,new_level              : $("#new_level").val()                 // 신규 층
            ,new_total_level        : $("#new_total_level").val()           // 신규 총 층
            ,room_way               : $("#room_way").val()                  // 방향
            ,trade_price            : $("#trade_price").val()               // 매매가
            ,rent_guarantee         : $("#rent_guarantee").val()            // 임대보증금
            ,rent_price             : $("#rent_price").val()                // 대출금
            ,migration_basic        : $("#migration_basic").val()           // 이주비(기본)
            ,migration_add          : $("#migration_add").val()             // 이주비(추가)
            ,add_payment_price      : $("#add_payment_price").val()         // 추가납부금
            ,pre_payment_price      : $("#pre_payment_price").val()         // 기납부금
            ,expect_taking_price    : $("#expect_taking_price").val()       // 예상 취득세
            ,brokerage_fee          : $("#brokerage_fee").val()             // 중개 수수료
            ,legal_costs            : $("#legal_costs").val()               // 법무 비용
            ,detail_note            : $("#detail_note").val()               // 세부 내용
            ,manage_note            : $("#manage_note").val()               // 운영 내용
            ,image                  : img                                   // 이미지
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

function validation(){
    if(unit_seq.val() == ""){
        alertify.alert("단지명을 선택해 주세요.");
        unit_seq.focus();
        return false;
    }
    if(trade_cd.val() == ""){
        alertify.alert("매매구분을 선택해 주세요.");
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
    if(progress_cd.val() == ""){
        alertify.alert("진행정보를 선택해 주세요.");
        progress_cd.focus();
        return false;
    }
    if(use_yn.val() == ""){
        alertify.alert("표출여부를 선택해 주세요");
        use_yn.focus();
        return false;
    }
    if(last_chg_dt.val() == ""){
        alertify.alert("최종변경일을 선택해 주세요.");
        last_chg_dt.focus();
        return false;
    }
    if(origin_area.val() == ""){
        alertify.alert("기존면적을 입력해 주세요.");
        origin_area.focus();
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
    if(origin_lease_history.val() == ""){
        alertify.alert("기존 임대 내역을 입력해 주세요.");
        origin_lease_history.focus();
        return false;
    }

        return true;
        
}