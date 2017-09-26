function Tab_ShowOnMouseOver(id, curtNum) {
    $("#" + id + " dd").removeClass("li_on");
    $("#" + id + " dt").removeClass("li_on");
    $("#" + id + " dt_" + id).addClass("li_on");
    $("#" + id + " dd_" + id).addClass("li_on");
}
function LoadAd() {
    //读取广告BY频道ID
    $("span[id^='spanad_']").each(function() {
        //$.ajax({
            //url: "/idata/Return_ajax.aspx?fac=getAdByCId&id=" + $(this).attr('id').replace('spanad_', ''),
            //async: false,
            //success: function(html) { if (html != "") { $(this).html(html) } }
        //})
		$(this).load("/idata/Return_ajax.aspx?fac=getAdByCId&id=" + $(this).attr('id').replace('spanad_', ''));
    })
}

$(document).ready(function() {
    //切换显示
    var showNum = 6;
    $(".toggle li").bind("click", function() {
        var Num = $(this).text();
        var List_ul = $(this).parent().parent().next();
        var obj_ul = $(List_ul).find("ul").eq((Num - 1));
        $(this).parent().find("li").removeClass("li_on");
        $(this).addClass("li_on");
        if ($(obj_ul).html() == "") {
            $(obj_ul).html("<li class='loading_01'>数据加载中,请稍后....</li>");
            $.ajax({
                url: "/idata/Return_ajax.aspx?fac=getindex&id=" + $(List_ul).attr("id") + "&start=" + ((Num - 1) * showNum) + "&end=" + (Num * showNum),
                async: false,
                success: function(html) { $(obj_ul).html(html); }
            })
        }
        $(List_ul).find("div").animate({
            marginLeft: "-" + (705 * (Num - 1)) + "px"
        }, 500);
    });
    
    ///评论咨询
    $.ajax({
        url: "/idata/Return_ajax.aspx?fac=getct_index",
        async: false,
        success: function(html) { if (html != "") { $(".comment_list").html(html) } }
    })

    //关注和销量
    var setTimeoutR;
    $(".Ranktop10_list ul li").bind("mouseover", function() {
        clearTimeout(setTimeoutR);
        var obj = $(this);
        setTimeoutR = setTimeout(function() {
            $(obj).parent().find("li").removeClass("li_on");
            $(obj).addClass("li_on");
        }, 200);
    });

    //关注和销量
    $(".Ranktop10_list").find("ul").eq(0).find("li").eq(0).addClass("li_on");
    $(".Ranktop10_list").find("ul").eq(1).find("li").eq(0).addClass("li_on");

    var setTimeoutRt;
    $(".Ranktop10_tab li").bind("mouseover", function() {
        clearTimeout(setTimeoutRt);
        var obj = $(this);
        setTimeoutRt = setTimeout(function() {
            $(obj).parent().find("li").removeClass("li_on");
            $(obj).addClass("li_on");
            var id = $(obj).attr("id");
            var obj_ul = $(obj).parent().parent().find(".Ranktop10_list").find("ul");
            $(obj_ul).hide();
            $(obj_ul).eq(id).show();
        }, 200)
    });

    $(".experience .experience_list").find("li").eq(0).addClass("li_on");
    $(".influence .experience_list").find("li").eq(0).addClass("li_on");

    //体验中心
    var setTimeoutEel;
    $(".experience").find(".experience_list").find("li").bind("mouseover", function() {
        var obj = $(this);
        clearTimeout(setTimeoutEel);
        setTimeoutEel = setTimeout(function() {
            $(obj).parent().find("li").removeClass("li_on");
            $(obj).addClass("li_on");
        }, 200);
    });

    ///欧诺学堂
    var setTimeoutH;
    $(".Hschool_title li").bind("mouseover", function() {
        var obj = $(this);
        clearTimeout(setTimeoutH);
        setTimeoutH = setTimeout(function() {
            $(obj).parent().find("li").removeClass("li_on");
            $(obj).addClass("li_on");
            var id = $(obj).attr("id");
            var obj_ul = $(obj).parent().parent().find(".Hschool_list").find("ul");
            $(obj_ul).hide();
            $(obj_ul).eq(id).show();
        }, 200);
    });

    Flash_Ad();
    //欧诺公告
    //$(".Notice_list ul").Scroll({ line: 1, speed: 800, timer: 3000 });



    //没有广告时隐藏高度
    $(".DadR").each(function() {
        if ($(this).html() == "") {
            $(this).css({ height: "0px" });
        }
    });
    $(".DadL").each(function() {
        if ($(this).html() == "") {
            $(this).css({ height: "0px" });
        }
    });
    $(".Dad").each(function() {
        if ($(this).html() == "") {
            $(this).css({ height: "0px" });
        }
    });
    
    LoadAd();
});

(function($) {
    $.fn.extend({
        Scroll: function(opt, callback) {
            //参数初始化
            if (!opt) var opt = {};
            var _this = this;
            var lineH = _this.find("li:first").height(), //获取行高
                        line = opt.line ? parseInt(opt.line, 10) : parseInt(this.height() / lineH, 10), //每次滚动的行数，默认为一屏，即父容器高度
                        speed = opt.speed ? parseInt(opt.speed, 10) : 500, //卷动速度，数值越大，速度越慢（毫秒）
                        timer = opt.timer ? parseInt(opt.timer, 10) : 3000; //滚动的时间间隔（毫秒）
            if (line == 0) line = 1;
            var upHeight = 0 - line * lineH;
            //滚动函数
            scrollUp = function() {
                _this.animate({
                    marginTop: upHeight
                }, speed, function() {
                    for (i = 1; i <= line; i++) {
                        _this.find("li:first").appendTo(_this);
                    }
                    _this.css({ marginTop: 0 });
                });
            }
            //鼠标事件绑定
            _this.hover(function() {
                clearInterval(timerID);
            }, function() {
                timerID = setInterval("scrollUp()", timer);
            }).mouseout();
        }
    })
})(jQuery);

//首页flash广告
function Flash_Ad() {
    var defaultOpts = { interval: 5000, fadeInTime: 300, fadeOutTime: 200 };
    //Iterate over the current set of matched elements
    var _titles = $("ul.slide_txt li");
    $(_titles).eq(0).addClass("li_on");
    var _titles_bg = $("ul.bg li");
    $(_titles_bg).eq(0).addClass("li_on");
    var _bodies = $("ul.slide-pic li");
    $(_bodies).eq(0).addClass("li_on");
    var _count = $(_titles).size();
    var _current = 0;
    var _intervalID = null;
    var stop = function() { window.clearInterval(_intervalID); };
    var slide = function(opts) {
        if (opts) {
            _current = opts.current || 0;
        } else {
            _current = (_current >= (_count - 1)) ? 0 : (++_current);
        };
        _bodies.filter(":visible").fadeOut(defaultOpts.fadeOutTime, function() {
            _bodies.eq(_current).fadeIn(defaultOpts.fadeInTime);
            _bodies.removeClass("li_on").eq(_current).addClass("li_on");
        });
        _titles.removeClass("li_on").eq(_current).addClass("li_on");
        _titles_bg.removeClass("li_on").eq(_current).addClass("li_on");
    };    //endof slide
    var go = function() {
        stop();
        _intervalID = window.setInterval(function() { slide(); }, defaultOpts.interval);
    };  //endof go
    var itemMouseOver = function(target, items) {
        stop();
        var i = $.inArray(target, items);
        slide({ current: i });
    };  //endof itemMouseOver
    _titles.hover(function() { if ($(this).attr('class') != 'li_on') { itemMouseOver(this, _titles); } else { stop(); } }, go);
    //_titles_bg.hover(function() { itemMouseOver(this, _titles_bg); }, go);
    _bodies.hover(stop, go);
    //trigger the slidebox
    go();
}