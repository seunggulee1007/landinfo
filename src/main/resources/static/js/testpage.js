var app = new Vue({
	el : '#appcontroller',
	data () {
		return {
			file : ""
		}
	},
	methods : {
		handleFileUpload(){
			this.file = this.$refs.file.files[0];
		},
		submitFile(){
			let formData = new FormData();
			formData.append('file',this.file);
			axios.post('/single-file',
					formData,
					{
						headers: {
							'Content-Type' : 'multipart/form-data'
						}
					}
			).then(function(){
				console.log('Success!!');
			}).catch(function(){
				console.log('실패....ㅠㅠ');
			})
		},
		goFile(){
		    var formData = new FormData();
		    formData.append
		}
	}
})