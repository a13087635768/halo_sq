<!DOCTYPE html>
<html style="background-color: rgba(47,47,47,1)">
<head>
	<title>文章</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.2/jquery.min.js"></script>
    <link rel="stylesheet" href="sq/source/css/cooker.css">
    <link rel="stylesheet" href="sq/source/css/docs.css">
<#--<link rel="stylesheet" type="text/css" href="sq/source/css/default.css">-->

    <link rel="stylesheet" href="sq/source/css/drawer.min.css">
    <link rel="stylesheet" type="text/css" href="sq/source/css/animate.css">
    <!-- 兼容代码 -->
    <script type="text/javascript">
        jQuery.browser={};(function(){jQuery.browser.msie=false; jQuery.browser.version=0;if(navigator.userAgent.match(/MSIE ([0-9]+)./)){ jQuery.browser.msie=true;jQuery.browser.version=RegExp.$1;}})();
    </script>
    <script src="sq/source/js/posfixed.js"></script>
<style type="text/css">
	
*{
margin: 0;
padding: 0;
}
body{
width: 100%;
}


.box{
  display: flex;
}
.tag{
/*border-radius:30px 30px 30px 30px;*/
border-bottom: 1px solid  #F00;
color: #fff;
}
/*.comment-wrap{*/
    /*border: ;1px solid #f00!important*/
/*}*/

</style>
</head>
<body class="box" style="background-color: rgba(47,47,47,1);width: 100%;height: 100%">
<!-- 文章内容 -->
<div class="box" style="flex-direction:column;width: 100%">
	<!-- 文章标题 -->
	<div class="box" style="width: 100%;justify-content:center;flex-direction:row;"> 
		<div class="box" style="">
				<h1 style="color: #fff">${post.postTitle}</h1>
		</div>

	</div>
	<br>
	<!-- 文章信息 -->
	<div class="box" style="flex-direction:row;width: 100%;justify-content:space-around">
			<div class="box" style="flex-direction:row;">
				<p  style="color: #fff;font-weight:bold;">tag&nbsp;:&nbsp;</p>
				<#list post.categories as categories>
				<p class="tag">&nbsp;${categories.cateName}&nbsp;</p><p style="color: #fff;font-weight:bold;">&nbsp;</p>
				</#list>
			</div>
			<div class="box" style="flex-direction:row;">
				<p  style="color: #fff;font-weight:bold;">categories&nbsp;:&nbsp;</p>
				<#list post.tags as tag>
				<p class="tag">&nbsp;${tag.tagName}&nbsp;</p><p style="color: #fff;font-weight:bold;">&nbsp;</p>

				</#list>

			</div>
			<div class="box" style="flex-direction:row;color: #fff;line-height:30px">
				<p>${post.postUpdate}</p>
			</div>
		<!-- 	<p style="color: #fff;font-weight:bold;";>tag:</p><p style="border-radius:30px 30px 30px 30px;border:2px solid  #F00;color: #fff">&nbsp;&nbsp;nbspt12dfrasdas&nbsp;&nbsp;</p><p>t12dfrasdas</p> <p>categories:</p><p>312312312312321321321</p><p>312312312312321321321</p><p>time:</p> -->
		
	</div>
	<br>
    <br>
    <br>
    <br>


	<!--  -->
	<div class="box" style="color: #ffffff;min-height: 400px;flex-direction:column;align-items:center;">
		${post.postContent}
	</div>
	<!-- 文章评论 -->
	<div>

		<#if post.allowComment?default(1)==1>

    <#include "/common/comment/_native_comment.ftl">
		</#if>
	</div>
</div>
</body>
<style>
	.comment-wrap{
        border:1px solid #f0f0f0 !important
	}
	.comment-input-content{
		color: #ffffff;
        background:transparent;
		border-style:none;
        border:2px solid #f0f0f0;
	}
	.comment-input{
        color: #ffffff;
        background:transparent;
        border-style:none;
        border:1px solid #f0f0f0;

	}
</style>
</html>