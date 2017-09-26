<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> - ${site.title}</title>
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
	<!-- Baidu tongji analytics --><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<sitemesh:head/>
</head>
<body>

    <!-- 头部改造   -->
	<div class="header">
		<div class="hm">		
		</div>
	</div>
	<div class="nav">
		<div class="nav_m">
			<ul class="cl">
			<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if test="${status.index lt 6}">
                    <c:set var="menuCategoryId" value=",${category.id},"/>
		    		<li><a href="${category.url}" class="btn">${category.name}</a></li>
		    	</c:if></c:forEach>
			<!-- 
				<li><a href="index.asp.htm" tppabs="http://www.qdas168.com/index.asp" class="btn">网站首页</a></li>
				<li>
					<a href="gsjs.asp.htm" tppabs="http://www.qdas168.com/gsjs.asp" class="btn">公司介绍</a>
				</li>
				<li><a href="cyyjs.asp.htm" tppabs="http://www.qdas168.com/cyyjs.asp" class="btn">产业园介绍</a></li>
				<li><a href="scfx.asp.htm" tppabs="http://www.qdas168.com/scfx.asp" class="btn">市场分析</a></li>
				<li class="sub_cp">
					<a href="product.asp.htm" tppabs="http://www.qdas168.com/product.asp" class="btn">产品中心</a>
					<ul class="nav-sub">
						<li><a href="product_show.asp-id=1.htm" tppabs="http://www.qdas168.com/product_show.asp?id=1"><em><img src="img/1.png" tppabs="http://www.qdas168.com/img/1.png"/></em><span>单晶硅光伏板</span></a></li>
						<li><a href="product_show.asp-id=2.htm" tppabs="http://www.qdas168.com/product_show.asp?id=2"><em><img src="img/2.png" tppabs="http://www.qdas168.com/img/2.png"/></em><span>多晶硅光伏板</span></a></li>
						<li><a href="product_show.asp-id=3.htm" tppabs="http://www.qdas168.com/product_show.asp?id=3"><em><img src="img/3.png" tppabs="http://www.qdas168.com/img/3.png"/></em><span>光伏支架</span></a></li>
						<li><a href="product_show.asp-id=4.htm" tppabs="http://www.qdas168.com/product_show.asp?id=4"><em><img src="img/4.png" tppabs="http://www.qdas168.com/img/4.png"/></em><span>光伏逆变器</span></a></li>
						<li><a href="product_show.asp-id=5.htm" tppabs="http://www.qdas168.com/product_show.asp?id=5"><em><img src="img/5.png" tppabs="http://www.qdas168.com/img/5.png"/></em><span>光电小产品</span></a></li>
	                    <li><a href="product_show.asp-id=11.htm" tppabs="http://www.qdas168.com/product_show.asp?id=11"><em><img src="img/6.png" tppabs="http://www.qdas168.com/img/6.png"/></em><span>光电采暖</span></a></li>
						<li><a href="product_show.asp-id=7.htm" tppabs="http://www.qdas168.com/product_show.asp?id=7"><em><img src="img/7.png" tppabs="http://www.qdas168.com/img/7.png"/></em><span>太阳能热水器</span></a></li>
						<li><a href="product_show.asp-id=8.htm" tppabs="http://www.qdas168.com/product_show.asp?id=8"><em><img src="img/8.png" tppabs="http://www.qdas168.com/img/8.png"/></em><span>光电新风系统</span></a></li>
						<li><a href="product_show.asp-id=9.htm" tppabs="http://www.qdas168.com/product_show.asp?id=9"><em><img src="img/9.png" tppabs="http://www.qdas168.com/img/9.png"/></em><span>光电空气能</span></a></li>
						<li><a href="product_show.asp-id=10.htm" tppabs="http://www.qdas168.com/product_show.asp?id=10"><em><img src="img/10.png" tppabs="http://www.qdas168.com/img/10.png"/></em><span>光伏路灯</span></a></li>
						
					</ul>
				</li>
				<li><a href="wddz.asp.htm" tppabs="http://www.qdas168.com/wddz.asp" class="btn">屋顶电站</a></li>
				<li><a href="fbsfd.asp.htm" tppabs="http://www.qdas168.com/fbsfd.asp" class="btn">分布式发电</a></li>
				<li><a href="bwfd.asp.htm" tppabs="http://www.qdas168.com/bwfd.asp" class="btn">并网发电</a></li>
				<li><a href="gffd.asp.htm" tppabs="http://www.qdas168.com/gffd.asp" class="btn">光伏电站</a></li>
				<li><a href="lwfd.asp.htm" tppabs="http://www.qdas168.com/lwfd.asp" class="btn">离网发电</a></li>
				<li><a href="dlhz.asp.htm" tppabs="http://www.qdas168.com/dlhz.asp" class="btn">代理合作</a></li>
				<li><a href="lxwm.asp.htm" tppabs="http://www.qdas168.com/lxwm.asp" class="btn">联系我们</a></li>
				 -->
			</ul>
		</div>
	</div>
   <!-- 头部改造   -->
	<div class="ban cl">
		<!-- 代码 开始 -->
	    <ul id="slider1" class="bannerpic">
	        <li><div class="pic1"></div></li>
	        <li><div class="pic2"></div></li>
	    </ul>
		<!-- 代码 结束 -->
	</div>    
    <!--main-->
	<div class="main">
			<sitemesh:body/>
	</div>    
	<!--main end-->
	
    <!--footer-->
	<div class="clear"></div>
	<div class="footer">
		<div class="foot-menu"><a href="index.asp.htm" tppabs="http://www.qdas168.com/index.asp">网站首页</a> | <a href="news.asp.htm" tppabs="http://www.qdas168.com/news.asp">新闻中心</a> | <a href="zjjs.asp.htm" tppabs="http://www.qdas168.com/zjjs.asp">专家教授</a> | <a href="shfw.asp.htm" tppabs="http://www.qdas168.com/shfw.asp">售后服务</a> | <a href="product.asp.htm" tppabs="http://www.qdas168.com/product.asp">产品中心</a> | <a href="dlys.asp.htm" tppabs="http://www.qdas168.com/dlys.asp">代理优势</a> | <a href="#">特色服务</a> | <a href="#">光伏知识</a> | <a href="lxwm.asp.htm" tppabs="http://www.qdas168.com/lxwm.asp">联系我们</a> | <a href="lxwm.asp.htm" tppabs="http://www.qdas168.com/lxwm.asp">在线留言</a></div>
	<div class="foot">
	    	<div class="foot-m">
	            <div class="foot-txt">
	            	<div><p>
		湖北基地：潜江市园林办事处马昌垸路52号 &nbsp; 电话：13872961912 &nbsp;邮箱：164217075@qq.com<br />
		<!-- 江苏基地：江苏省苏州市吴江区七都镇虹桥路1号 &nbsp; 电话：0512-63932490 &nbsp; 63932491 &nbsp;63932495<br />  
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15240424308 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15240424318&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 18862459350<br /> -->
		<br />全国免费咨询电话：13872961912&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网址：<a href="http://www.sqjsg.com/" tppabs="http://www.sqjsg.com/">www.sqjsg.com/</a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</p>
		<br />前时间：${fns:getDate('yyyy年MM月dd日 E')}
		<!-- <a href="javascript:if(confirm('http://www.miitbeian.gov.cn/  \n\n该文件无法用 Teleport Ultra 下载, 因为 它是一个域或路径外部被设置为它的启始地址的地址。  \n\n你想在服务器上打开它?'))window.location='http://www.miitbeian.gov.cn/'" tppabs="http://www.miitbeian.gov.cn/" target="_blank">京ICP备17005445号-1</a> -->
	</div>
	            </div>
	       </div>
	    </div>
	<!--footer end-->
</body>
</html>