

var app = new Vue({
    el : "#app",
    data : {
        posts:[]
        ,errors : []
        ,reg_visible : true
        ,modify_visible : false
    },
    created : function(){                        // 돔이 로딩 되기 전 리스트를 불러온다.
         axios({
             method : "get",
             url : "/getAptUnitList"
         })
         .then(function(response){
             this.posts = response.data.list
         }.bind(this))
         .catch(function(e){
             this.errors.push(e)
         });
    },
    methods : {
        regAptUnit : function(){                            // 단지 등록 메서드
            
            if($("#image").val() == ''){
                alertify.alert("이미지를 선택해 주세요");
                return;
            }
            var form = new FormData($("#regImg")[0]);
            $.ajax({
                url: "/multifile",                      //컨트롤러 URL
                data: form,
                dataType: 'json',
                processData: false,
                contentType: false,
                type: 'POST',
                success: function (response) {
                    doRegAptUnit(response);
                },error: function (jqXHR) {
                    alertify.alert(jqXHR.responseText);
                }
            });
        },
        modifyAptUnit : function(){
            if($("#image").val() != ''){
                var form = new FormData($("#regImg")[0]);
                $.ajax({
                    url: "/multifile",                      //컨트롤러 URL
                    data: form,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    success: function (response) {
                        modifyAptUnit(response);
                    },error: function (jqXHR) {
                        alertify.alert(jqXHR.responseText);
                    }
                });
            }else{
                modifyAptUnit();
            }
        }
    
        ,
        deleteAptUnit : function(seq){
            if(!confirm("삭제하시겠습니까?")){
                return;
            }
            axios({
                method : "delete",
                url    : "/deleteAptUnit",
                params : {
                    seqNo : seq
                }
            }).then(function(response){
                alertify.alert(response.data.resultMsg);
                location.reload();
            }.bind(this))
            .catch(function(e){
            });
        },
        click : function(unit_name,note,info,seq_no){                   // 클릭시 폼으로 데이터 보내고 수정 버튼 활성화
            $("#unit_name").val(unit_name);
            $("#note").val(note);
            $("#info").val(info);
            $("#seq_no").val(seq_no);
            this.reg_visible = false;
            this.modify_visible = true;
        },
        clearForm : function (){
            $("#regAptUnit")[0].reset();
            this.reg_visible = true;
            this.modify_visible = false;
        }
            
    }
});

function doRegAptUnit(img){
    if($("#unit_name").val() == ''){
        alertify.alert("단지명을 입력해주세요.");
        return;
    }
    if($("#note").val() == ''){
        alertify.alert("특징을 입력해주세요.");
        return;
    }
    if($("#info").val() == ''){
        alertify.alert("소개를 입력해주세요.");
        return;
    }
    $.ajax({
        method : "post",
        url : "/regAptUnit",
        data : { 
            unit_name : $("#unit_name").val()
            ,note     : $("#note").val()
            ,info     : $("#info").val()
            ,image    : img
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

function modifyAptUnit(img){
    $.ajax({
        url : "/modifyAptUnit",
        data : {
            unit_name : $("#unit_name").val()           // 단지명
            ,note     : $("#note").val()                // 특징
            ,info     : $("#info").val()                // 소개
            ,image    : img                             // 이미지
            ,seqNo    : $("#seq_no").val()              // 일련번호
        },
        error : function(error){
            alertify.alert(error);
        },
        success : function(data) {
            alertify.alert(data.resultMsg);
            location.reload();
        }
    
    })
}