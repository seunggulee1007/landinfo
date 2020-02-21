/** 새로운 Vue js 정의*/
var app = new Vue({
    el : '#appcontroller'         	// 어떤 엘리먼트에 적용할지 정의 (elements의 약자)
    , data : {          			// 해당 뷰에서 사용할 정보
        posts : []
        ,errors : []
        ,paging : ''
    }
    , created : function () {   	// 컴포넌트 초기화 단계 클라이언트 단과 서버단 렌더링 모두에서 처리해야 할 일이 있을 때 사용
        axios({
            method : "post",
            url : $("#url").val(),
            params : {
                Limit : 0
            }
        })
        .then(function(response){
            console.log(response.data.list);
            this.posts = response.data.list
        }.bind(this))
        .catch(function(e){
            this.errors.push(e)
        });
    }
    , methods : {                   // 동작에 따른 함수들 선언
        getList : function(){
            axios({
                method : "post",
                url : $("#url").val(),
                params : {
                    page : this.posts.number
                }
            })
            .then(function(response){
            	this.posts = response.data.list
            }.bind(this))
            .catch(function(e){
                this.errors.push(e)
            });
        },
        increment : function (){
            //인스턴스 내부의 데이터모델에 접근할 떈 this를 사용
            this.posts.number++;
        },
        decrement : function () {
            this.posts.number--;
        }
    }
})
