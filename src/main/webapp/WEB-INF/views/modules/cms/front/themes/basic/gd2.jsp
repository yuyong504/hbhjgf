<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	background-color: #fff;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
#indemo img{ margin-right:10px;}
.imgbg{}
-->
</style></head>

<body>
<div id="demo" style="width:1200px; overflow:hidden; height:202px;">
                <div id="indemo" style="float:left; width: 800%;">
                    <div id="demo1" style="float:left;"><span class="imgbg">
                    <img src="${ctxStatic}/hbhjgf1/img/gd1.jpg" tppabs="http://www.qdas168.com/img/gd1.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd2.jpg" tppabs="http://www.qdas168.com/img/gd2.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd3.jpg" tppabs="http://www.qdas168.com/img/gd3.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd1.jpg" tppabs="http://www.qdas168.com/img/gd1.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd2.jpg" tppabs="http://www.qdas168.com/img/gd2.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd3.jpg" tppabs="http://www.qdas168.com/img/gd3.jpg" />
                    </span></div>
                    <div id="demo2" style="float:left;"></div>
                </div>
            </div>
            <script>
              var speed=20; //数字越大速度越慢
				var tab=document.getElementById("demo");
				var tab1=document.getElementById("demo1");
				var tab2=document.getElementById("demo2");
				tab2.innerHTML=tab1.innerHTML;
				function Marquee(){
				if(tab2.offsetWidth-tab.scrollLeft<=0)
				tab.scrollLeft-=tab1.offsetWidth
				else{
				tab.scrollLeft++;
				}
				}
				var MyMar=setInterval(Marquee,speed);
				tab.onmouseover=function() {clearInterval(MyMar)};
				tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};

              </script>
</body>
</html>
