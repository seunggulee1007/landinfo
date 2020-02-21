$(function(){
	
	/*
	 * 이미지 변경 이벤트
	 * input file 이미지 미리보기
	 */ 
	$(".img-group input[type=file]").change(function(e){
		e.preventDefault();
		var location = $(this);
		var upload = $(this).attr('id');
		var holder = $(this).siblings('label').find('img');
		var file = $(location).prop('files')[0];
		var reader = new FileReader();
		reader.onload = function(event){
			$(holder).attr('src', event.target.result);
		}
		reader.readAsDataURL(file);
	});
	
	// 메뉴 버튼 클릭
    $('#sidebarCollapse').on('click', function () {
		// 사이드메뉴 250px toggle
        $('#sidebar').toggleClass('active');
        $('#content').toggleClass('active');
    });
	
	
	
});



