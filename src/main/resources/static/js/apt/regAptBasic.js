
var app = new Vue({
    el : "#app",
    data : {
        options         : []                        // 단지명 담을 변수
        ,errors         : []                        // 에러 담을 변수
        ,selected       : ''                        // 단지명 변경 감지 변수
        ,new_selected   : ''                        // 신규단지명 변경 감지 변수
        ,setCombo       : ''
        ,aptAreaCombo   : []                        // 평형 콤보 담을 변수
        ,new_options    : []                        // 신규 단지명
    },
    created : function(){                           // 돔이 로딩 되기 전 실행되는 메서드.
        axios({
            method : "post",
            url : "/getAptUnitCombo"                // 단지명 콤보 가져올 url
        })
        .then(function(response){
            this.options     = response.data.list   // 기존 단지명 세팅
            this.new_options = response.data.list   // 신규 단지명 세팅
        }.bind(this))
        .catch(function(e){
            alertify.alert(e);
        });
    },
    methods : {
        regAptBasic : function(){                   // 아파트 등록 메서드(이미지 먼저 등록)
            
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
                url         : "/multifile",         //컨트롤러 URL
                data        : form,
                dataType    : 'json',
                processData : false,
                contentType : false,
                type        : 'POST',
                success     : function (response) {
                    doRegAptBasic(response);
                },error     : function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        },
        getAptAreaCombo : function(){
            axios({
                url     : "/getAptAreaCombo",
                method  : "post",
                params  : {
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
var unit_seq        = $("#unit_seq");       // 단지명   
var trade_cd        = $("#trade_cd");       // 매매 구분 
var pyeong          = $("#pyeong");         // 평형    
var deal_cd         = $("#deal_cd");        // 거래구분  
var progress_cd     = $("#progress_cd");    // 진행정보  
var use_yn          = $("#use_yn");         // 표출여부  
var dong            = $("#dong");           // 해당동   
var level           = $("#level");          // 해당층   
var total_level     = $("#total_level");    // 총층    
var room_way        = $("#room_way");       // 방향    
var room_count      = $("#room_count");     // 방수    
var restroom_count  = $("#restroom_count"); // 욕실수   
var trade_price     = $("#trade_price");    // 매매가   
var rent_guarantee  = $("#rent_guarantee"); // 임대보증금 
var rent_price      = $("#rent_price");     // 대출금   
var tax             = $("#tax");            // 예상취등록세
var guarantee       = $("#guarantee");      // 중개수수료 
var law_guarantee   = $("#law_guarantee");  // 법무비용  
var detail_note     = $("#detail_note");    // 세부정보  
var manage_note     = $("#manage_note");    // 운영정보  
var last_chg_dt     = $("#last_chg_dt");    // 최종변경일 

function doRegAptBasic(img){
    
    if(!validation()){
        return;
    }
    
    $.ajax({
        method : "post",
        url : "/regAptBasic",
        data : {
            unit_seq        : unit_seq.val()                      // 단지명
            ,trade_cd       : trade_cd.val()                      // 매매 구분
            ,pyeong         : pyeong.val()                        // 평형
            ,deal_cd        : deal_cd.val()                       // 거래구분
            ,progress_cd    : progress_cd.val()                   // 진행정보
            ,use_yn         : use_yn.val()                        // 표출여부
            ,dong           : dong.val()                          // 해당동
            ,level          : level.val()                         // 해당층
            ,total_level    : total_level.val()                   // 총층
            ,room_way       : room_way.val()                      // 방향
            ,room_count     : room_count.val()                    // 방수
            ,restroom_count : restroom_count.val()                // 욕실수
            ,trade_price    : trade_price.val()                   // 매매가
            ,rent_guarantee : rent_guarantee.val()                // 임대보증금
            ,rent_price     : rent_price.val()                    // 대출금
            ,tax            : tax.val()                           // 예상취등록세
            ,guarantee      : guarantee.val()                     // 중개수수료
            ,law_guarantee  : law_guarantee.val()                 // 법무비용
            ,detail_note    : detail_note.val()                   // 세부정보
            ,manage_note    : manage_note.val()                   // 운영정보
            ,last_chg_dt    : last_chg_dt.val().replace(/-/gi,"") // 최종변경일
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
        alertify.alert("총층을 입력해 주세요.");
        total_level.focus();
        return false;
    }
    if(room_way.val() == ""){
        alertify.alert("방향을 입력해 주세요.");
        room_way.focus();
        return false;
    }
    if(room_count.val() == ""){
        alertify.alert("방수를 입력해 주세요.");
        room_count.focus();
        return false;
    }
    if(restroom_count.val() == ""){
        alertify.alert("욕실수를 입력해 주세요.");
        restroom_count.focus();
        return false;
    }
    if(trade_price.val() == ""){
        alertify.alert("매매가를 입력해 주세요.");
        trade_price.focus();
        return false;
    }
    if(rent_guarantee.val() == ""){
        alertify.alert("임대보증금을 입력해 주세요.");
        rent_guarantee.focus();
        return false;
    }
    if(rent_price.val() == ""){
        alertify.alert("대출금을 입력해 주세요.");
        rent_price.focus();
        return false;
    }
    
    if(tax.val()==""){
        alertify.alert("예상취등록세를 입력해 주세요.");
        tax.focus();
        return false;
    }
    
    if(guarantee.val() == ""){
        alertify.alert("중개수수료를 입력해 주세요.");
        guarantee.focus();
        return false;
    }
    
    if(law_guarantee.val() == ""){
        alertify.alert("법무비용을 입력해 주세요.");
        law_guarantee.focus();
        return false;
    }
    
    if(detail_note.val() == ""){
        alertify.alert("세부정보를 입력해 주세요.");
        detail_note.focus();
        return false;
    }
    
    if(manage_note.val() == ""){
        alertify.alert("운영정보를 입력해 주세요.")
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