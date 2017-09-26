<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
</head>
<body>
	
	<!--main-->
	<div class="cl mt-20">
		<div class="p-l">
			<div class="b-title">
			<c:forEach items="${fnc:getArticleList(site.id, 5, 1, '')}" var="article">
				<em>Company introduction</em>
				<span>${article.category.name}</span>
				<a href="${ctx}/list-5${urlSuffix}" target="_blank"></a><!-- more -->			</div>
					<div class="b-con">
					 <a href="${article.url}"  target="_blank"><img src="${fn:replace(article.imageSrc,'_thumbs','')}"  alt="湖北红君光伏发电"/> 
		 			<!-- <a href="${article.url}"  target="_blank"><img src="${article.category.image}"  alt="湖北红君光伏发电"/>--> </a></div>
		 			<div class="b-con"> ${fn:substring(article.articleData.content, 0, 150)}
		 			${fn:substring(article.description, 0, 50)}... <a href="${article.url}"  target="_blank">[详细点击]</a></div>
		 			<!-- ${fns:abbr(article.title,150)}  -->
			</c:forEach>
	  </div>
		<div class="p-c">
			<div class="b-title">
				<em>News center</em>
				<span>新闻中心</span>
				
				<a href="news.asp.htm" tppabs="http://www.qdas168.com/news.asp" target="_blank"></a>			</div>
		   <div class="b-con"><a href="news.asp.htm" tppabs="http://www.qdas168.com/news.asp" target="_blank"><img src="img/ind-xt2.jpg" tppabs="http://www.qdas168.com/img/ind-xt2.jpg" alt="湖北红君光伏发电"/></a></div> 
				<div class="b-con">
					<div class="indnew-m"> 
	                            
		              <c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
							<ul><li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li></ul>
						</c:forEach>
			  		</div>
				</div>
			</div>
		<div class="p-r">
			<div class="b-title">
				<em>Online video</em>
				<span>在线视频</span>
				<a href="#"></a>
			</div>
			<div class="b-con"><img src="${ctxStatic}/hbhjgf1/img/sp.jpg" tppabs="http://www.qdas168.com/img/sp.jpg" alt="湖北红君光伏发电"/></div>
	  </div>
	</div>
	
	<c:forEach items="${fnc:getArticleList(site.id, 4, 6, '')}" var="article" varStatus="status" >
			<c:if test="${status.index lt 20}">
				<c:if test="${status.index % 3 eq 0 }">
					<div class="clear"></div>
					<div class="cl mt-20">
						<div class="p-l">
				</c:if>
				<c:if test="${status.index % 3 eq 1 }">
					<div class="p-c">
				</c:if>
				<c:if test="${status.index % 3 eq 2 }">
					<div class="p-r">
				</c:if>
					<div class="b-title">
						<em>${article.keywords}</em>
						<span>${article.title}</span>
						<a href="${article.url}" target="_blank"></a>			</div>
				  <div class="b-con">
				   <a href="${article.url}"  target="_blank"><img src="${fn:replace(article.imageSrc,'/_thumbs', '')}"  alt="湖北红君光伏发电"/> </div>
					<div class="b-con">${article.description}
					<!-- ${fn:substring(article.description, 0, 50)}...  --> <a href="${article.url}"  target="_blank">[详细点击]</a>
					</div>
					<c:if test="${status.index % 3 eq 2 }">
						</div>
						<div class="clear"></div>
						<div class="m-top ad"><img src="${ctxStatic}/hbhjgf1/img/ad1.jpg" tppabs="http://www.qdas168.com/img/ad1.jpg" alt="湖北红君光伏发电"/></div>
					</c:if>
			  </div>
			</c:if>
    	</c:forEach>
 
   
  <div class="clear"></div>
  
  <c:forEach items="${fnc:getArticleList(site.id, 'ce843f44a4dc4b449cc87752b3ce501a', 6, '')}" var="article" varStatus="status" >
				<c:if test="${status.index % 3 eq 0 }">
					<div class="clear"></div>
						<div class="cl t-list">
						<div class="p-l">
				</c:if>
				
				<c:if test="${status.index % 3 eq 1 }">
					<div class="p-c">
				</c:if>
				
				<c:if test="${status.index % 3 eq 2 }">
					<div class="p-r">
				</c:if>
				
					<div class="b-con"><img src="${fn:replace(article.imageSrc,'/_thumbs', '')}"  alt="湖北红君光伏发电"/></div>
					
					<c:if test="${status.index % 3 eq 2 }">
						</div>
						<div class="clear"></div>
					</c:if>
			  </div>
    	</c:forEach>
    	
    <div class="clear"></div>
	<div class="cpxl m-top cl">
		<div class="title">
			<em>Products</em><span>产品系列</span>
		</div>
		<div class="b-list">
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">单晶硅<br />
  光伏板</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">多晶硅<br />光伏板</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光伏<br />支架</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光伏<br />逆变器</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光电<br />小产品</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">太阳能<br />热水器</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光电<br />新风系统</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光电<br />空气能</a>
			<a href="${ctx}/list-644a235eecb642afb660cb678d935ae3${urlSuffix}"  target="_blank">光伏<br />路灯</a>
		</div>
  </div>
    <div class="clear"></div>
	<div class="cpxl-list">
		<ul class="cl">
		<c:forEach items="${fnc:getArticleList(site.id, '644a235eecb642afb660cb678d935ae3', 8, '')}" var="article" varStatus="status" >
			<li ${status.index % 4 eq 3 ? 'class="end"' : ''}>
				<div class="item-img"><img src="${fn:replace(article.imageSrc,'/_thumbs', '')}"  alt="湖北红君光伏发电" /></div>
				<div class="item-txt"><a href="${article.url}"  target="_blank">${article.title}</a></div>
		  </li>
    	</c:forEach>
		</ul>
	</div>
	<div class="m-top ad"><img src="${ctxStatic}/hbhjgf1/img/ad1.jpg" tppabs="http://www.qdas168.com/img/ad1.jpg" alt="湖北红君光伏发电"/></div>
    <div class="clear"></div>
    
    <c:forEach items="${fnc:getArticleList(site.id, 'd144b931d6e34941ad687d0b7c7ee161', 6, '')}" var="article" varStatus="status" >
				<c:if test="${status.index % 3 eq 0 }">
					<div class="clear"></div>
					<div class="cl mt-20">
						<div class="p-l">
				</c:if>
				<c:if test="${status.index % 3 eq 1 }">
					<div class="p-c">
				</c:if>
				<c:if test="${status.index % 3 eq 2 }">
					<div class="p-r">
				</c:if>
					<div class="b-title">
						<em>${article.keywords}</em>
						<span>${article.title}</span>
						<a href="${ctx}/list-d144b931d6e34941ad687d0b7c7ee161${urlSuffix}" target="_blank"></a>			</div>
				  <div class="b-con">
				   <a href="${article.url}"  target="_blank"><img src="${fn:replace(article.imageSrc,'/_thumbs', '')}"  alt="湖北红君光伏发电"/> </div>
					<div class="b-con">${article.description}
					<!-- ${fn:substring(article.description, 0, 50)}...  --> <a href="${article.url}"  target="_blank">[详细点击]</a>
					</div>
					<c:if test="${status.index % 3 eq 2 }">
						</div>
						<div class="clear"></div>
					</c:if>
			  </div>
    	</c:forEach>
	<div class="m-top ad"><img src="${ctxStatic}/hbhjgf1/img/ad1.jpg"  alt="湖北红君光伏发电"/></div>
  <div class="clear"></div>
  <div class="m-top">
  
  <div id="demo" style="width:1200px; overflow:hidden; height:202px;left:-800px">
  		<marquee behavior="alternate"   scrollamount="10" width="1200" onmouseover="this.stop();" onmouseout="this.start();">
                <div id="indemo" style="float:left; width: 800%;">
                    <div id="demo1" style="float:left;"><span class="imgbg">
                    <img src="${ctxStatic}/hbhjgf1/img/gd1.jpg" tppabs="http://www.qdas168.com/img/gd1.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd2.jpg" tppabs="http://www.qdas168.com/img/gd2.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd3.jpg" tppabs="http://www.qdas168.com/img/gd3.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd1.jpg" tppabs="http://www.qdas168.com/img/gd1.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd2.jpg" tppabs="http://www.qdas168.com/img/gd2.jpg" /></span>
                    <span class="imgbg"><img src="${ctxStatic}/hbhjgf1/img/gd3.jpg" tppabs="http://www.qdas168.com/img/gd3.jpg" />
                    </span></div>
                </div>
     	      </div>
     	 </marquee> 
   </div>         
<!--main end-->
    </div>  
</body>

</html>
