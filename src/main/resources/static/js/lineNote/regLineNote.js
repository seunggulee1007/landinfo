
var app = new Vue({
    el : "#app",
    data : {
        errors         : []                        // 에러 담을 변수
    },
    created : function(){                           // 돔이 로딩 되기 전 실행되는 메서드.
    },
    methods : {
        regLineNote : function(){                   // 건물 등록 메서드(이미지 먼저 등록)
            var btn = document.getElementById("regLineNote");
            submitContents(btn);
        }
            
    }
});

var oEditors = [];

nhn.husky.EZCreator.createInIFrame({
    oAppRef : oEditors,
    elPlaceHolder : "contents",                                     // 에디터를 적용할  textarea ID
    sSkinURI : "/resources/smarteditor/SmartEditor2Skin.html",      // Editor HTML 파일 위치
    fCreator:"createSEditor2",
    htParams : {                                                    // 툴바 사용 여부(true/false)
        bUseToolbar : true ,                                        // 입력창 크기 조절바 사용 여부(true/false)
        bUseVerticalResizer : true,                                 // 모드 탭(Editor|HTML|TEXT)사용여부 (true/false)
        bUseModeChanger : true                                      // 전송버튼 클릭 이벤트
    }
    
})

function submitContents(elClickedObj){
        oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD",[]);
    try{
        alertify.confirm("등록하시겠습니까?", function(e){
            if(e){
                if($("#title").val() == ""){
                    alertify.alert("제목을 입력해 주세요.");
                    return;
                }
                if($("#contents").val() == ""){
                    alertify.alert("내용을 입력해 주세요.");
                    return;
                }
                
                $.ajax({
                    url : "/regLineNote",
                    method : "post",
                    data : {
                        title : $("#title").val(),
                        contents : $("#contents").val()
                    },error : function(error){
                        alertify.alert(error);
                    },success : function(data){
                        alertify.alert(data.resultMsg);
                        location.replace("/lineNote/lineNoteList");
                        alertify.success(data.resultMsg);
                    }
                })
            }else{
                return;
            }
        })
       
    }catch(e){
        alertify.alert(e);
    }
}