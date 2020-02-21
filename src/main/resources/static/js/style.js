$(function(){
    
    //GNB
    var viewH = $(document).height();
    $('#gnb, .gnb_wrap').css('height',viewH);
    $('.gnb_toggle').click(function(){
        $(this).toggleClass('on');
        $(this).parent('#gnb').toggleClass('off')
       $('.header_top').toggleClass('on');
    })
   
    
    
    //date picker1
    $( ".datepicker" ).datepicker();

    
    
    
})

