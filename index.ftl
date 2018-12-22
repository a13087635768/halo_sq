<!DOCTYPE html>
<html>
<head>
	<title>${options.blog_title?default('我的博客 ')}</title>
<script src="https://cdn.bootcss.com/jquery/2.2.2/jquery.min.js"></script>
<script src="sq/source/js/layer.js"></script>
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

.dy{
    display:none
}
.box{
  display: flex;
}
 .topbody{
   background:url(${options.theme_sq_bgimg?default('sq/source/images/bg.jpg')})  no-repeat center center;
   background-size:100%;

}
/*touming*/
/*.tm{
	filter:alpha(Opacity=80);-moz-opacity:0.5;opacity: 0.5;
	
	
}*/
.content{

SCROLLBAR-FACE-COLOR:#205e17;
SCROLLBAR-SHADOW-COLOR:#86ff92;
SCROLLBAR-SHADOW-COLOR:#86ff92;
SCROLLBAR-3DLIGHT-COLOR:#205e17;
SCROLLBAR-TRACK-COLOR:#205e17;
SCROLLBAR-DARKSHADOW-COLOR:#205e17;
SCROLLBAR-BASE-COLOR:#205e17;
SCROLLBAR-ARROW-COLOR:#86ff92;


}
.bg{
	color: #EAEADF;
/*background-color:rgba(0,0,0,0.3);
*/flex-direction:column;
justify-content:space-between;
    cursor:pointer;
   background-size:100% 100%;
   align-items:center;
}
.bg p{
	color: #EAEADF;
	font-size:22px;
}
.mydemo{
    padding: 10px;  
    /*color: #EAEADF;*/
    background-color:rgba(0,0,0,0.3);
    border-radius:30px 30px 30px 30px;width: 30%;

}
.mydemo p{
    color: black;
}




	</style>
</head>
<body class="box drawer drawer-right slidebar-body " bgcolor="#171717" style="width: 100% ;margin:0;background-color:rgba(0,0,0,0.8)">




<!-- 首页背景 -->
<div class="box " style="flex-direction:column;justify-content: flex-start;width: 100%;" >
    <div class="box" id="mb" onclick="closemenu()" style="background-color:rgba(0,0,0,0.7);;display:none;z-index: :9999999;width: 100%;height: 650px;">
        <div style="height: 50px"></div>
        <div id="addmod" class="box slidebar-body" style=" overflow-y:auto; overflow-x:auto;flex-wrap:wrap ;flex-direction:row;justify-content:space-around;width: 80%;background-color:rgba(0,0,0,0.1)">







        </div>

    </div>
	<!-- 顶部图片 -->
	<div class="box topbody" id="uohid" style="width:100%;height: 650px;justify-content:space-between;flex-direction:column; ">
		<div class="box" style="width: 100%;flex-direction:column;justify-content:center;align-items:center;height: 50px"> 
		<div id="example1" class="box" style="background-color:rgba(0,0,0,0.3); height: 50px; justify-content:space-between;flex-direction:row;width: 100%;align-items:center;">
			<p style="color: #EAEADF">${options.blog_title?default('SQ ')}</p>
			<p style="color: #EAEADF"></p>
			<p class="" onclick="openmenu()" style="color: #EAEADF" onmouseover="addpulse(this)" onmouseout="rmpulse(this)">
				<img  style="width: 30px;height: 30px" src="sq/source/images/cd.png"></p>
		</div>
		</div>

		<div class="box" style="width: 100%;justify-content:center;align-items:center;flex-direction:column;">
			<div class="box"  style="align-items:center;justify-content:center;background-color:rgba(0,0,0,0.3);padding: 5px;border-radius:50%">
			<img   style="border-radius:50%;max-width:150px;width:150px;height:150px" src="${options.blog_logo?default('sq/source/images/log.jpg')}">
			</div>
			<br>
			<div class = "mydemo" ><p style="color: #EAEADF;line-height:30px">${options.seo_desc?default('试着填写下基本信息吧！')}</p>
			</div>
			<br>
            <div style="cursor:pointer" onclick="window.open('${options.theme_sq_git?default('#')}')">
                <img style="height:25px;width: 25px;" src="sq/source/images/git.png">
            </div>

		</div>
		<!-- 填充底部 -->

		<div></div>
	</div>

	<!-- 显示内容 -->
	<div class="box" style="flex-direction:row;flex-wrap:wrap;justify-content:space-around ;align-items:center">
		<!-- <div style="border: 1px solid #FF0000;height: 500px ;width:49%;background-color: #808080"></div> -->
		<!-- border: 1px solid #FF0000; -->

		<#list posts.content as post>
        <#if post.postStatus==0>
   <div class="bg box"  onclick="openpage(this,event)"  data-page="/archives/${post.postUrl}"  style=" background:url(${post.postThumbnail?default('sq/source/images/cd.png')})  no-repeat center center;background-size:cover;;height: 400px ;width:50%;" >
       <div></div>
       <div></div>
       <div class="box"  id="test" style="height: 120px;width:100%;background-color:rgba(0,0,0,0.8);flex-direction:column;justify-content:space-between;"><p>${post.postTitle}</p><p></p>
           <div class="box" style="flex-direction:row;justify-content:space-between;"><p></p><p></p><p></p><p></p><p></p><p>${post.postUpdate?default('时间被虫洞吞噬')}</p></div>
       </div>
   </div>
        </#if>
		</#list>




								
								
										

</div>

	</div>

	<!-- 导航条 -->
<div class="content drawer drawer-right slidebar-body" style="width: 20%;position:absolute;display:none;z-index:999;margin: 0;height: 650px;
padding: 0;background-color:rgba(35,38,46,0.9);float:right;right:0; overflow-y:auto; overflow-x:auto;" id="menu">
    <div style="height: 40px;color: #fff;border-bottom:2px solid  #F00;" >
        <div class="box" style="flex-direction:column;align-items:center;justify-content:center;">
            <p style="font-weight:bold;font-size:30px;color: rgba(255,255,255,0.7)">功能</p>
        </div>
    </div>


    <div  style="color: #fff;cursor:pointer;width: 100%" >
        <div onmouseover="astyle(this)" onmouseout="rastyle(this)" onclick="opm(this)" data-status="false" class="box" style="background-color: rgba(57,61,73,0.5);flex-direction:column;align-items:center;width: 100%" >
            <a style="text-decoration:none;font-size:25px;color: rgba(255,255,255,0.7);border-bottom-width: 1px">标签</a>
		<@commonTag method="tags">
			<#list tags as tag>
                       <div style="background-color: rgba(57,61,73,0.5);width: 100%;font-size:20px" class="dy" onmouseover="astyled(this)" onmouseout="rastyled(this)" onclick="updatediv(this)">${tag.tagName}
						<div style="display:none;">
						   <#list tag.posts as post>
                                 <#if post.postStatus==0>
                                    <div data-page="/archives/${post.postUrl}" class="bg box" style="width: 300px;height: 300px;background:url(${post.postThumbnail?default('sq/source/images/cd.png')})" onclick="openpage(this,event)" name="newpage">
                                        <div></div>
                                        <div></div>
                                        <div class="box"  id="test" style=";width:100%;background-color:rgba(0,0,0,0.8);flex-direction:column;justify-content:space-between;"><p>${post.postTitle}</p><p></p>
                                            <div class="box" style="flex-direction:row;justify-content:space-between;"><p></p><p></p><p></p><p></p><p></p><p>${post.postUpdate}</p></div>
                                        </div>
                                    </div>
                                 </#if>
						   </#list>
						</div>
					   </div>
			</#list>
		</@commonTag>

        </div>
<#--mulu -->
        <div onmouseover="astyle(this)" onmouseout="rastyle(this)" onclick="opm(this)" data-status="false" class="box" style="background-color: rgba(57,61,73,0.5);flex-direction:column;align-items:center;width: 100%" >
            <a style="text-decoration:none;font-size:25px;color: rgba(255,255,255,0.7);border-bottom-width: 1px">目录</a>
		<@commonTag method="categories">
            <#list categories as categorie>
                       <div style="background-color: rgba(57,61,73,0.5);width: 100%;font-size:20px" class="dy" onmouseover="astyled(this)" onmouseout="rastyled(this)" onclick="updatediv(this)">${categorie.cateName}
                           <div style="display:none;">
						   <#list categorie.posts as post>
                               <#if post.postStatus==0 >
                               <div data-page="/archives/${post.postUrl}" class="bg box" style="width: 300px;height: 300px;background:url(${post.postThumbnail?default('sq/source/images/cd.png')})" onclick="openpage(this,event)" name="newpage">
                                   <div></div>
                                   <div></div>
                                   <div class="box"  id="test" style=";width:100%;background-color:rgba(0,0,0,0.8);flex-direction:column;justify-content:space-between;"><p>${post.postTitle}</p><p></p>
                                       <div class="box" style="flex-direction:row;justify-content:space-between;"><p></p><p></p><p></p><p></p><p></p><p>${post.postUpdate?default("更新下时间")}</p></div>
                                   </div>
                               </div>
                               </#if>
                           </#list>
                           </div>
                       </div>
            </#list>
        </@commonTag>

        </div>

    </div>






<#--<#list commonTag.tags as tag>-->


<#--</#list>-->
<#--<#include  "tags.ftl">-->



		<#-- 大师的撒-->

		</div>
		
<script type="text/javascript">
	function addpulse(me){
		//alert("dsa")
		// 	$(me).addClass( "pulse animated ");
        //
		// 	$(me).children(".box").addClass( "shake animated ");

	}
		function rmpulse(me){
		//alert("dsa")
// 	$(me).removeClass("animated   pulse");
// $(me).children(".box").removeClass( "shake animated ");
// 	//$("#test").removeClass("animated fadeOutUp fadeIn")
// 	//$("#test").addClass( "animated fadeOutUp");z

	}

	

	$(function(){

	$("#example1").posfixed({
		distance:0,
		pos:"top",
		type:"while",
		hide:false
	});
	//设置基本高度
       $("#uohid").css({
           "height":window.innerHeight

       })
        $("#menu").css({
            "height":window.innerHeight
        })
        $("#mb").css({
            "height":window.innerHeight
        })



  	});



	

	function openmenu(){
        $("#menu")[0].style.display='block';

        //$("#menu").addClass( "bounceInRight animated ");
        $("#menu").animateCss("bounceInDown delay-0.1s",function(){

        })

        //$("#example1")[0].style.width=70%;
        //\$("#menu").addClass( "pulse animated ");
        $("#menu")[0].style.top=$(document).scrollTop()+"px";
        $("#mb")[0].style.top=$(document).scrollTop()+"px";


        //newdiv.style.z-index="999";
        $("#mb")[0].style.display='block';
        $("#mb")[0].style.position="absolute" ;
        $(document.body).css({
            "overflow-x":"hidden",
            "overflow-y":"hidden"
        });
        $("#mb").css({
            "overflow":"auto",
        });

        


    }

    function closemenu(){
        $('#menu').animateCss('bounceOutUp delay-0.1s', function() {
            $("#menu")[0].style.display='none';

        });
        // $("#menu").addClass( "bounceOutRight animated");
        //$("#example1")[0].style.width=70%;
        //\$("#menu").addClass( "pulse animated ");

        //newdiv.style.z-index="999";
        $("#mb")[0].style.display='none';
        $("#mb")[0].style.position="absolute" ;
        $(document.body).css({
            "overflow-x":"auto",
            "overflow-y":"auto"
        });
        $("#mb").css({
            "overflow":"hidden",
        });


		// $("#menu").addClass( "bounceOutRight animated");
		//$("#example1")[0].style.width=70%;
		//\$("#menu").addClass( "pulse animated ");

		//newdiv.style.z-index="999";
		$("#mb")[0].style.display='none';
		//$("#mb")[0].style.position="absolute" ;
		$(document.body).css({
		   "overflow-x":"auto",
		   "overflow-y":"auto"
		 });
	}

$.fn.extend({
  animateCss: function(animationName, callback) {
    var animationEnd = (function(el) {
      var animations = {
        animation: 'animationend',
        OAnimation: 'oAnimationEnd',
        MozAnimation: 'mozAnimationEnd',
        WebkitAnimation: 'webkitAnimationEnd',
      };

      for (var t in animations) {
        if (el.style[t] !== undefined) {
          return animations[t];
        }
      }
    })(document.createElement('div'));

    this.addClass('animated ' + animationName).one(animationEnd, function() {
      $(this).removeClass('animated ' + animationName);

      if (typeof callback === 'function') callback();
    });

    return this;
  },
});
function openpage(me,e) {
    e.stopPropagation();
    layer.open({
        type: 2,
        area: ['700px', '450px'],
        shade: 0.6,
        fixed: false, //不固定
        maxmin: true,
        content: $(me).data("page"),
        min :function () {
            $(".layui-layer-shade").css("display", "none");
        }


        });


            // window.location.href=$(me).data("page");
}
    function astyle(me){
        me.style.backgroundColor="rgba(57,61,73,1)";
        $(me).children("a")[0].style.color="rgba(255,255,255,1)";
    }
    function rastyle(me){
        me.style.backgroundColor="rgba(57,61,73,0.5)";
        $(me).children("a")[0].style.color="rgba(255,255,255,0.7)";

    }

    function astyled(me){
        me.style.backgroundColor="rgba(0,0,0,1)";
    }
    function rastyled(me){
        me.style.backgroundColor="rgba(57,61,73,0.5)";
    }
    function opm(me){
    if($(me).data("status")){

        $(me).children("div").css({
            "display":"none"
        })
        $(me).data("status",false);
    }else{
        $(me).children("div").css({
            "display":"block"
        })
        $(me).data ("status",true);
    }


    }
    function updatediv(me) {
        $("#addmod").children("div").remove();
     addhtml= $(me).children("div")[0].innerHTML;
    $("#addmod").append(addhtml);

    }
    $("div[name='newpage']").on('click',function (e) {
        alert("dsadas");
        e.stopPropagation();
        openpage(this);
    })
  </script>

</body>

</html>