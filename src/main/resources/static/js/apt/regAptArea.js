
var app = new Vue({
    el : "#app",
    data : {
        options : []
        ,errors : []
        ,selected : ''
        ,posts : []
        ,reg_visible : true                     // 등록버튼 활성화
        ,modify_visible : false                 // 수정버튼 비활성화
    },
    created : function(){                        // 돔이 로딩 되기 전 리스트를 불러온다.
        this.getAptAreaList();
        this.getAptUnitCombo();
    },
    methods : {
        regAptArea : function(){                        // 평형 등록 메서드
            var form = new FormData($("#regImg")[0]);
            form.append("img1",$("#img1")[0].files[0]);
            form.append("img2",$("#img2")[0].files[0]);
            
            if($("#img1").val() == ""){
                alertify.alert("첫번째 이미지를 선택해 주세요.");
                return;
            }
            if($("#img2").val() == ""){
                alertify.alert("두번째 이미지를 선택해 주세요.");
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
                  console.log(response);
                  doRegAptArea(response);
                },error: function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        },
        modifyAptArea : function(){
            if($("#img1").val() != '' || $("#img2").val() != ''){
                var form = new FormData($("#regImg")[0]);
                form.append("img1",$("#img1")[0].files[0]);
                form.append("img2",$("#img2")[0].files[0]);
                $.ajax({
                    url: "/multifile",                      //컨트롤러 URL
                    data: form,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    success: function (response) {
                        modifyAptArea(response);
                    },error: function (jqXHR) {
                        alertify.alert(jqXHR.responseText);
                    }
                });
            }else{
                modifyAptArea();
            }
        },
        getAptAreaList : function(){                       // 평형 리스트 조회
            axios({
                url : "/selectAptAreaList",
                method: "post",
                params : {
                    limit : 0
                }
            }).then(function(response){
                this.posts = response.data.list;
            }.bind(this))
            .catch(function(e){
                alertify.alert(e);
            });
        },
        getAptUnitCombo : function(){                       // 단지명 콤보 박스
            axios({
                method : "post",
                url : "/getAptUnitCombo"
            })
            .then(function(response){
                console.log(response);
                this.options = response.data.list
                console.log(this.options);
            }.bind(this))
            .catch(function(e){
                alertify.alert(e);
            });
        }
        ,
        deleteAptArea : function(seq){                      // 단지 삭제 메서드
            if(!confirm("삭제하시겠습니까?")){
                return;
            }
            axios({
                method : "delete",
                url    : "/deleteAptArea",
                params : {
                    seq_no : seq
                }
            }).then(function(response){
                alertify.alert(response.data.resultMsg);
                location.reload();
            }.bind(this))
            .catch(function(e){
            });
        },
        click : function(post){                             // 클릭시 폼으로 데이터 보내고 수정 버튼 활성화
            $("#unit_seq").val(post.unit_seq);              // 단지명
            $("#type").val(post.type);                      // 타입
            $("#pyeong").val(post.pyeong);                  // 평형
            $("#exclusive_area").val(post.exclusive_area);  // 전용면적
            $("#com_liv_area").val(post.com_liv_area);      // 주거공용면적
            $("#com_etc_area").val(post.com_etc_area);      // 기타 공용면적
            $("#land_portion").val(post.land_portion);      // 대지 지분
            $("#households").val(post.households);          // 세대수
            $("#seq_no").val(post.seqNo);                   // 일련번호
            this.reg_visible = false;                       // 등록버튼 활성화
            this.modify_visible = true;                     // 수정버튼 비활성화
        },
        clearForm : function (){
            $("#regAptArea")[0].reset();
            this.reg_visible = true;
            this.modify_visible = false;
        }
    }
});
function doRegAptArea(img){                                 // 단지별 평형 등록
    
    var unit_seq        = $("#unit_seq");
    var type            = $("#type");
    var pyeong          = $("#pyeong");
    var exclusive_area  = $("#exclusive_area");
    var com_liv_area    = $("#com_liv_area");
    var com_etc_area    = $("#com_etc_area");
    var land_portion    = $("#land_portion");
    var households      = $("#households");
    
    
    if(unit_seq.val() == ""){
        alertify.alert("단지명을 선택해주세요.");
        unit_seq.focus();
        return;
    }
    if(type.val() == "") {
        alertify.alert("타입을 입력해 주세요.");
        type.focus();
        return;
    }
    if(pyeong.val() == ""){
        alertify.alert("평형을 선택해주세요.");
        pyeong.focus();
        return;
    }
    if(exclusive_area.val() == ""){
        alertify.alert("전용면적을 입력해주세요.");
        exclusive_area.focus();
        return;
    }
    if(com_liv_area.val() == ""){
        alertify.alert("주거공용면적을 입력해주세요.");
        com_liv_area.focus();
        return;
    }
    if(com_etc_area.val() == ""){
        alertify.alert("기타공용면적을 입력해주세요.");
        com_etc_area.focus();
        return;
    }
    if(land_portion.val() == ""){
        alertify.alert("대지지분을 입력해주세요.");
        land_portion.focus();
        return;
    }
    if(households.val() == ""){
        alertify.alert("세대수를 입력해주세요");
        households.focus();
        return;
    }
    $.ajax({
        method : "post",
        url : "/regAptArea",
        data : { 
            unit_seq            : unit_seq.val()          // 단지명
            ,type               : type.val()              // 타입
            ,pyeong             : pyeong.val()            // 평형
            ,exclusive_area     : exclusive_area.val()    // 전용면적
            ,com_liv_area       : com_liv_area.val()      // 주거공용면적
            ,com_etc_area       : com_etc_area.val()      // 기타공용면적
            ,land_portion       : land_portion.val()      // 대지 지분
            ,households         : households.val()        // 세대수
            ,image              : img                           // 이미지
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

// 평형 수정 메서드
function modifyAptArea(img){
    
    $.ajax({
        method : "post",
        url : "/modifyAptArea",
        data : { 
            unit_seq            : $("#unit_seq").val()
            ,seqNo              : $("#seq_no").val()
            ,type               : $("#type").val()
            ,pyeong             : $("#pyeong").val()
            ,exclusive_area     : $("#exclusive_area").val()
            ,com_liv_area       : $("#com_liv_area").val()
            ,com_etc_area       : $("#com_etc_area").val()
            ,land_portion       : $("#land_portion").val()
            ,households         : $("#households").val()
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