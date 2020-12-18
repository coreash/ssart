//<![CDATA[
window.quick = {};
objQuick = window.quick;
objQuick.obj = [];
objQuick.showSpeed = 500;
objQuick.hideSpeed = 500;
objQuick.scrollSpeed = 500;
objQuick.opacityRate = 0.5;
$htmlAndBody = $('html,body');

objQuick.RemoveQuickTop = function(){
	$(objQuick.obj).stop().animate({'opacity':0},objQuick.hideSpeed,function(){objQuick.obj.remove();objQuick.obj.length = 0;});
}
objQuick.AddQuickTop = function(){
	objQuick.obj = $('<div id="quick_top"><a href="#wrap">TOP</a></div>').appendTo($("#wrap")).animate({'opacity':objQuick.opacityRate}, objQuick.showSpeed, objQuick.BindClickEvent);
	objQuick.footerOffsetTop = $('#footer').offset().top;
}
objQuick.BindClickEvent = function(){
	$(objQuick.obj).find('a').on('click',function(e){
		e.preventDefault();
		$htmlAndBody.stop().animate({scrollTop:0}, objQuick.scrollSpeed);
	});
}
$(window).on('scroll', function(){
	var $this = $(this), windowScrollTop = $this.scrollTop(), windowScroolTopHeight = windowScrollTop + $this.height();
	if(windowScrollTop > 0){
		if(objQuick.obj.length == 0) objQuick.AddQuickTop();

		if (objQuick.footerOffsetTop < windowScroolTopHeight){
			objQuick.obj.css({'bottom':(windowScroolTopHeight - objQuick.footerOffsetTop + 50) + 'px'});
		}else{
			objQuick.obj.css({'bottom':'50px'});
		}
	}else{
		objQuick.RemoveQuickTop();
	}
});
//]]>