<%@ page contentType="text/html;charset=UTF-8" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" /><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Expires" content="0" />
<meta name="author" content="http://thinkgem.iteye.com"/><meta http-equiv="X-UA-Compatible" content="IE=7,IE=9,IE=10" />
<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctxStatic}/jquery/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>
<!-- 轮播  
	<link href="${ctxStatic}/hbhjgf/css/app.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStatic}/hbhjgf/css/demo.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStatic}/hbhjgf/css/normalize.css" type="text/css" rel="stylesheet" />
-->
<c:if test="${site.theme eq 'basic'}">
	<script src="${ctxStatic}/hbhjgf1/js/jquery.bxSlider.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf1/js/jquery.SuperSlide.2.1.1.source.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf1/js/nav.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf1/js/pngfix.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf1/ClassFunction.js" type="text/javascript"></script>
	<link href="${ctxStatic}/hbhjgf1/css/css.css" type="text/css" rel="stylesheet" />
</c:if>


<c:if test="${site.theme eq 'basic2'}">
	 <link href="${ctxStatic}/bootstrap/2.3.1/css_cerulean/bootstrap.min.css" type="text/css" rel="stylesheet" /> 
	<script src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lte IE 6]><link href="${ctxStatic}/bootstrap/bsie/css/bootstrap-ie6.min.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStatic}/bootstrap/bsie/js/bootstrap-ie.min.js" type="text/javascript"></script><![endif]-->
	<link href="${ctxStatic}/common/jeesite.min.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStaticTheme}/style.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStaticTheme}/script.js" type="text/javascript"></script>
</c:if>

<c:if test="${site.theme eq 'basic1'}">
	<script src="${ctxStatic}/hbhjgf/js/autoSize.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf/js/default_091223.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf/js/jquery.hhService.js" type="text/javascript"></script>
	<script src="${ctxStatic}/hbhjgf/js/MSClass.js" type="text/javascript"></script>
	<link href="${ctxStatic}/hbhjgf/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStatic}/hbhjgf/css/css.css" type="text/css" rel="stylesheet" />
</c:if>