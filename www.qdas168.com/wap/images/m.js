var mobile_os=(function(){var u=window.navigator.userAgent;if(u.match(/(Android)[\s\/]+([\d\.]+)/)){return true;};if(u.match(/(iPad|iPhone|iPod)\s+OS\s([\d_\.]+)/)){return true;};if(u.match(/(Windows\s+Phone)\s([\d\.]+)/)){return true;};return false;}());

function expTime(millisecond){if(millisecond.length==0){millisecond=0};var exp=new Date();exp.setTime(exp.getTime()+parseInt(millisecond));return exp.toGMTString();}
function createCookie(name,value,expires,path,domain,secure){document.cookie=name+"="+encodeURI(value)+(expires?(';expires='+expires):'')+(path?(';path='+path):'')+(domain?(';domain='+domain):'')+((secure)?';secure':'');}
function deleteCookie(name,path,domain){if(getCookie(name)){document.cookie=name+"="+((path)?(";path="+path):'')+((domain)?(";domain="+domain):'')+";expires=Mon,01-Jan-2006 00:00:01 GMT";}}
function getCookie(name){var arg=name+"=";var alen=arg.length;var theCookie=''+document.cookie;var inCookieSite=theCookie.indexOf(arg);if(inCookieSite==-1||name==""){return '';}var begin=inCookieSite+alen;var end=theCookie.indexOf(';',begin);if(end==-1){end=theCookie.length;}return decodeURI(theCookie.substring(begin,end));}


var focus_pic={"id":"focus_pic","timer":null,"interval":6000,"trigger":700,"begin":0,"speed":220,"touch":{"s":[],"m":[],"e":[],"d":""}};

function focus_pic_reset(o){
	$(".content",o.o).stop(true,true);
	window.clearInterval(o.timer);
	o.timer=window.setInterval(function(){focus_pic_change(o,"right");},o.interval);
	o.a.css({"width":o.o.width(),"height":o.o.width()*0.46875});
	o.c.css({"height":o.o.width()/12.5});
	o.l.css({"height":o.o.width()/12.5,"font-size":o.o.width()/25+"px"});
	o.p.css({"height":o.o.width()*5/100});
	o.s.css({"width":o.o.width()/40,"height":o.o.width()/40,"margin-right":o.o.width()/80});
	$(".content",o.o).css("left",-o.a.width()*2);
	window.setTimeout(function(){if(o.a.width()<o.o.width()){focus_pic_reset(o);};},0);
};

function focus_pic_init(o){
	if($("#focus_pic").length==0){return false;};
	o.o=$("#"+o.id);
	o.a=$("a",o.o);
	$("<div class=\"cover\"></div><a href=\"#\" class=\"link\"></a><div class=\"point\"></div>").appendTo(o.o);
	o.a.each(function(i,e){$("<span></span>").appendTo($(".point",o.o));});
	o.c=$(".cover",o.o);
	o.l=$(".link",o.o);
	o.p=$(".point",o.o);
	o.s=$("span",o.p).eq(o.begin).addClass("active").end();
	o.l.text(o.a.eq(o.begin).attr("title")).attr("href",o.a.eq(o.begin).attr("href"));
	o.o.bind("touchstart",function(e){o.touch.s[0]=e.originalEvent.touches[0].pageX;o.touch.s[1]=e.originalEvent.touches[0].pageY;o.touch.s[2]=(new Date()).getTime();$(".content",o.o).stop(true,true);window.clearInterval(o.timer);});
	o.o.bind("touchmove",function(e){if(Math.abs(e.originalEvent.touches[0].pageX-o.touch.s[0])>Math.abs(e.originalEvent.touches[0].pageY-o.touch.s[1])&&o.touch.d==""){o.touch.d=1;o.touch.m[0]=o.touch.s[0];}else if(o.touch.d==""){o.touch.d=0;};if(o.touch.d==1){e.preventDefault();$(".content",o.o).css({"left":parseInt($(".content",o.o).css("left"))+e.originalEvent.touches[0].pageX-o.touch.m[0]});o.touch.m[0]=e.originalEvent.touches[0].pageX;o.touch.m[1]=e.originalEvent.touches[0].pageY;};});
	o.o.bind("touchend",function(e){if(o.touch.d==1){if((new Date()).getTime()-o.touch.s[2]>o.trigger){var w=o.a.width();if(o.touch.s[0]-o.touch.m[0]>w/3){focus_pic_change(o,"right");}else if(o.touch.m[0]-o.touch.s[0]>w/3){focus_pic_change(o,"left");}else{focus_pic_change(o,"reset");};}else{if(o.touch.s[0]>o.touch.m[0]){focus_pic_change(o,"right");}else if(o.touch.s[0]<o.touch.m[0]){focus_pic_change(o,"left");};};};o.touch.d="";o.timer=window.setInterval(function(){focus_pic_change(o,"right");},o.interval);});
	o.timer=window.setInterval(function(){focus_pic_change(o,"right");},o.interval);
	focus_pic_reset(o);
	$(window).resize(function(){focus_pic_reset(o);});
	$(".content a:last",o.o).insertBefore($(".content a:first",o.o));
	$(".content a:last",o.o).insertBefore($(".content a:first",o.o));
	$(".content",o.o).css("left",-o.a.width()*2);
};

function focus_pic_change(o,c){
	var n=o.s.filter(".active").index();
	var f=n;
	var l=o.a.length;
	var w=o.a.width();
	if(c=="right"){
		f=(n+1)%l;
		$(".content",o.o).stop(true,true).animate({"left":-w*3},o.speed,function(){
			$(".content a:first",o.o).insertAfter($(".content a:last",o.o));
			$(".content",o.o).css("left",-w*2);
		});
	}else if(c=="left"){
		f=(n+l-1)%l;
		$(".content",o.o).stop(true,true).animate({"left":-w},o.speed,function(){
			$(".content a:last",o.o).insertBefore($(".content a:first",o.o));
			$(".content",o.o).css("left",-w*2);
		});
	}else if(c=="reset"){
		$(".content",o.o).stop(true,true).animate({"left":-w*2},o.speed,function(){
		
		});
	};
	o.l.text(o.a.eq(f).attr("title")).attr("href",o.a.eq(f).attr("href"));
	o.s.removeClass("active").eq(f).addClass("active");
};

function article_click_init(){
	if($("#article_list").length==0){return false;};
	$("#article_list .item").click(function(){
		$(this).addClass("item_c");
		location.href=$("a:first",this).attr("href");
	});
};

function article_load_init(){
	if($("#article_list .more_article").length==0){return false;};
	$("#article_list .more_article").click(function(){
		var obj=$(this).hide();
		var obj_s=$("#article_list .more_loading").show();
		var n=obj.attr("page_now");
		var m=obj.attr("page_max");
		var p=obj.attr("page_template");
		var t=$("<div class=\"temp_div\"></div>").insertBefore(obj);
		var c=t.prevAll(".content:lt(2)");
		t.load(p.replace("|||page|||",++n)+" #article_list .content",function(){
			if(n>=m){obj.remove();}else{obj.attr("page_now",n);};
			$(".content .item",t).each(function(i,e){
				var aid=$(this).attr("aid");
				if($(".item[aid='"+aid+"']",c).length){
					$(this).remove();
				}else{
					return false;
				};
			});
			$(".content",t).unwrap();
			obj.show();
			obj_s.hide();
			lazy_load_img_remove();
			lazy_load_img_init();
		});
	});
};

function return_top_init(){
	if($(".float_return_top").length==0){return false;};
	$(".float_return_top").click(function(){
		$(document).scrollTop(0);
	});
	$(document).scroll(function(){
		if($(document).scrollTop()>200){
			$(".float_return_top").show();
		}else{
			$(".float_return_top").hide();
		};
	});
};


var lazy_load_timer=null;
var lazy_load_obj=null;
function lazy_load_img(){window.clearTimeout(lazy_load_timer);lazy_load_timer=window.setTimeout(function(){var o_list=lazy_load_obj.filter(":visible");if(o_list.length){var v_h=$(window).height()+$(document).scrollTop()+100;o_list.each(function(i){if($(this).offset().top<v_h){$(this).attr("src",$(this).attr("osrc"));lazy_load_obj=lazy_load_obj.not($(this).removeAttr("osrc"));};});};if(!lazy_load_obj.length){lazy_load_img_remove();}},0);};
function lazy_load_img_remove(){lazy_load_timer=null;lazy_load_obj=null;$(self).unbind("scroll",lazy_load_img);$(self).unbind("resize",lazy_load_img);if($.isFunction(self.other_lazy_load_img_remove)){other_lazy_load_img_remove();};};
function lazy_load_img_init(){lazy_load_obj=$("img[osrc]");if(lazy_load_obj.length){$(self).scroll(lazy_load_img);$(self).resize(lazy_load_img);if($.isFunction(self.other_lazy_load_img_init)){other_lazy_load_img_init();};lazy_load_img();};};

function other_lazy_load_img_init(){};
function other_lazy_load_img_remove(){};

function page_init(){
	focus_pic_init(focus_pic);
	lazy_load_img_init();
	nav_init();
	search_init();
	article_click_init();
	article_load_init();
	return_top_init();
	prev_page_init();
	article_content_init();
	change_page_init();
	computer_version_init();
	top_note_init();
	hide_173_bar_init();
	//xxooooxx_init();
};

jQuery(function($){

page_init();

});