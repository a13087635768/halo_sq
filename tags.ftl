<!DOCTYPE html>
<html>
<head>
	<title>主题</title>
</head>
<body>
<#list tags as tag>

    <div  style="height: 40px;color: #fff;cursor:pointer;" >
        <div onmouseover="astyle(this)" onmouseout="rastyle(this)" onclick="opm(this)" class="box" >
            <a style="text-decoration:none;font-size:25px;color: rgba(255,255,255,0.7);border-bottom-width: 1px">${tag.tagName}</a>
        </div>

    </div>
</#list>
</body>
</html>
