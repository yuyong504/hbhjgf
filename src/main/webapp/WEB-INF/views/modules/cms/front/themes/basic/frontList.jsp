<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${category.description}" />
	<meta name="keywords" content="${category.keywords}" />
</head>
<body>

 <div class="main cl m-top">
	<link href="css/css.css" tppabs="http://www.qdas168.com/css/css.css" rel="stylesheet" type="text/css" />
<div class="nyleft">
		<div class="ny-title"><em>Quick navigation</em><span>快速导航</span></div>
		<div class="left-logo"></div>
		<div class="left-menu">
			<ul>
				<cms:frontCategoryList categoryList="${categoryList}"/>
			</ul>
		</div>
		<div class="left-btn-cp"><a href="product.asp.htm" tppabs="http://www.qdas168.com/product.asp"></a></div>
		<div class="left-tel"></div>
		</div>

	<div class="nyright">
		<div class="ny-title"><em><cms:frontCurrentPosition category="${category}"/></em><span></span></div>
		<div class="nyad"><img src="img/nyad1.jpg" tppabs="http://www.qdas168.com/img/nyad1.jpg"/></div>
		<div class="nyzw">
              <table width="1170" border="0" cellpadding="0" cellspacing="0">
                <tr>
               
                  <td>
                  <table width="438" border="0" cellpadding="0" cellspacing="0">
                  
                   <c:forEach items="${page.list}" var="article" varStatus="status">
                   
	      				<c:if test="${status.index % 2 eq 0 }">
	      					<tr>
	                        </tr><tr height=12 colspan=4></tr>
	                        <tr>
	                     </c:if>
		                        <td width="438">
			                        <table width="438" border="0" cellpadding="0" cellspacing="0">
				                              <td width="180" rowspan="2"><img src="${article.imageSrc}" width="180" height="125" /></td>
				                              <td width="5">&nbsp;</td>
												<td width="253" rowspan="2">
													<table width="253" border="0">
					                                  <tr>
					                                    <td width="247" class="fontRedB">
					                                        <a href="${article.url}"  target="_blank">
					                                        ${article.title}
					                                    </a></td>
					                                </tr>
					                                  <tr>
					                                    <td> ${fn:substring(article.description, 0, 50)}</td>
					                                  </tr>
					                              </table>
				                          		 </td>
	                          		</table>
	                          	</td>
	                         <c:if test="${status.index % 2 eq 1 }">
	                       		</tr>
	                     	</c:if>
	                     	
                     </c:forEach>
                          
                            </td></table>
                          </table>
                     
	  			<div class="clear"></div>
			  <div>
			    <style type="text/css">
</style>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
             
              <tr>
                <td height="40" align="left" class="ltqq1">
                  <span class="STYLE1">
                  ${page}
			</script>
                  <script type="text/javascript">
					function page(n,s){
						location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
					}
				</script>
                  &nbsp;&nbsp;</td>
  </tr>
          </table>
		      </div>
		  </div>
	</div>
</div>

</body>
</html>