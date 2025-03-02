

var app = new Vue({
    el : "#app",
    data : {
        posts:[]
        ,errors : []
    },
    /*created : function(){                        // 돔이 로딩 되기 전 리스트를 불러온다.
         axios({
             method : "get",
             url : "/getAptUnitList"
         })
         .then(function(response){
             this.posts = response.data.list
             console.log(this.posts);
         }.bind(this))
         .catch(function(e){
             this.errors.push(e)
         });
    },*/
    methods : {
        popup_ing_info : function(apt_seq){                        // 단지 등록 메서드
                window.open("/counsel/mainCounselDetail","_blank","width=760,height=560,left=600");
        },
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
                this.posts = response.data.list
                console.log(this.posts);
            }.bind(this))
            .catch(function(e){
            });
        }
            
    }
});


function doRegAptUnit(img){
    
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
                    alertify.alertify.alertify.alert(error);
                },
                success : function(data) {
                    alertify.alert(data.resultMsg);
                    location.reload();
                }
                
            })
    
}