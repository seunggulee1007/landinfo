
var app =  new Vue({
	el : '#app',		// 어떤 엘리먼트에 적용할지 정합니다.
	// data는 해당 뷰에서 사용할 정보를 지닙니다.
	data : {
		value : 0
		,name : 'Vue'
		,flag : true
		,feelsgood : '/images/tae.jpg'
		,feelsogood : '/images/4.gif'
		,todos : [
			{text : 'Vue.js 튜토리얼을 왜 작성하냐'},
			{text : '심심한데 뭐하지'},
			{text : '집이나 가자'}
		]
		,number : 0
		,posts:[]
		,errors:[]
	},
	created : function () {
		axios.get("/test/result")
		.then(function(response) {
			// JSON responses are automatically parsed.
			this.posts = response.data
		}.bind(this))
		.catch(function(e) {
			this.errors.push(e)
		});
		console.log(this.posts)
	},
	computed: {
		reverse: function() {
			return this.posts.reverse();
		},
 
		orderedUsers: function () {
			return _.orderBy(this.posts, 'first_name')
		}
	},
	methods : {
		increment : function (){
			//인스턴스 내부의 데이터모델에 접근할 떈 this를 사용
			this.number++;
		},
		decrement : function () {
			this.number--;
		},
		getList : function(tab){
			axios.get("/test/result",{
				method : 'post',
				
				params : {
					tabs : tab
				}
			})
			.then(function(response) {
				// JSON responses are automatically parsed.
				this.posts = response.data
			}.bind(this))
			.catch(function(e) {
				this.errors.push(e)
			});
			console.log(this.posts)
		}
	}
	
});

$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})