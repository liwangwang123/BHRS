$(function(){
	var phone=$('.tbmessage-main .input-phone').val();
	checkMobile(phone);
	var email=$('.tbmessage-main .input-email').val();
	checkEmail(email);

	function checkMobile(str) {
    var re = /^1\d{10}$/
    if (re.test(str)) {
        $('.prompt-phone').css('display',"none");
    } else {
        $('.prompt-phone').show(0);
    }
}
	function checkEmail(str){
    var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
    if(re.test(str)){
        $('.prompt-email').css('display',"none");
    }else{
        $('.prompt-email').show(0);
    }
}

	$('.tbmessage-main .tbxz').bind('click',function(event) {
		$('.out-section.xuzhi').addClass('current').siblings('').removeClass('current');
        $('body').css('background',"#fff");
	});

	$('.tbmessage-main .bxtk').bind('click',function(event) {
		$('.out-section.tiaokuan').addClass('current').siblings('').removeClass('current');
        $('body').css('background',"#fff");
	});
	$('.tbmessage-main .tbtss').bind('click',function(event) {
		$('.out-section.tishishu').addClass('current').siblings('').removeClass('current');
        $('body').css('background',"#fff");
	});

	$('.tbsure-main .jkwj').bind('click',function(event) {
		$('.out-section.wenjuan').addClass('current').siblings('').removeClass('current');
        $('body').css('background',"#fff");
	});
	$('.tbsure-main .smysq').bind('click',function(event) {
		$('.out-section.shouquan').addClass('current').siblings('').removeClass('current');
        $('body').css('background',"#fff");
	});

	$('.out-section button').bind('click',function(event) {
		$(this).parents('.out-section').removeClass("current");
        $('body').css('background',"#f6f6f6");
	});


	$('.payget-card-line').bind('click',function(event) {
		$(this).addClass('current').siblings('').removeClass('current');
	});


})
