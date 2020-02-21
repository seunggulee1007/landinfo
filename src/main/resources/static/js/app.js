/** 새로운 Vue js 정의*/
var app = new Vue({
	el : '#app'			// 어떤 엘리먼트에 적용할지 정의 (elements의 약자)
	, data : {			// 해당 뷰에서 사용할 정보
		posts : []
		,errors : []
	}
	, created : function () {	// 컴포넌트 초기화 단계 클라이언트 단과 서버단 렌더링 모두에서 처리해야 할 일이 있을 때 사용
		axios.get("/test/result")
		.then(function(response){
			// JSON 응답값이 자동으로 parse된다.
			this.posts = response.data
			loadProgressBar();
		}.bind(this))
		.catch(function(e){
			this.errors.push(e)
		});
		console.log(this.posts);
	}
	,computed : {			//  계산된 속성을 사용할때 선언
		hasResult: function () {
		      return this.posts.length > 0
		   }
	}
	
	, methods : {					// 동작에 따른 함수들 선언
		
		getList : function(tab){
			
			axios({
				method : "post",
				url : "test/result",
				params : {
					tabs : tab
				}
			})
			.then(function(response){
				this.posts = response.data
			}.bind(this))
			.catch(function(e){
				this.errors.push(e)
			});
		},
		submitFile(){
			let formData = new FormData();
			formData.append('file',this.file);
			
			axios.post('/file-progress',
					formData,
					{
						headers : {
							'Content-Type' : 'multipart/form-data'
						},
						onUploadProgress : function( progressEvent){
							this.uploadPercentage = parseInt(Math.round((progressEvent.loaded * 100) / progressEvent.total));
						}.bind(this)
					}
			).then(function(){
				console.log('SUCCESS!!');
			}).catch(function(){
				console.log('FAILURE!!');
			})
		}
	}
})
