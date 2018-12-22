<#import "/common/macro/theme_option_marco.ftl" as option>
<@option.head />




<div class="container-fluid">
    <div class="row">
        <!-- 这里为预览图，只需要将图片命名为screenshot.png放在主题更目录就可以啦 -->
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <!-- tab标签，可以将一些设置分类 -->
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#test1" data-toggle="tab">基本设置</a>
                    </li>

                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">

                    <!-- testOptions1 -->
                    <div class="tab-pane active" id="test1">
                        <form method="post" class="form-horizontal" id="sqOptions">
                            <div class="box-body">

                                <!-- 测试选项testItem -->
                                <div class="form-group">
                                    <label for="sqGit" class="col-sm-4 control-label">Git地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="sqGit" name="theme_sq_git" value="${options.theme_sq_git?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="SqBgimg" class="col-sm-4 control-label">设置背景图片：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="sqBgimg" name="theme_sq_bgimg" value="${options.theme_sq_bgimg?if_exists}">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('sqBgimg')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('sqOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <!--testOptions2-->
                    <#--<div class="tab-pane" id="test2">-->
                        <#--<form method="post" class="form-horizontal" id="testOptions2">-->
                            <#--<div class="box-body">-->
                                <#--<!-- 设置项 &ndash;&gt;-->
                            <#--</div>-->
                            <#--<div class="box-footer">-->
                                <#--<button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('testOptions2')">保存设置</button>-->
                            <#--</div>-->
                        <#--</form>-->
                    <#--</div>-->

                    <!-- 关于该主题，一些作者的信息 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <!-- 头像 -->
                                    <img class="img-circle" src="/${themeDir}/screenshot.png" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">SQ</h3>
                                <h5 class="widget-user-desc">一个不是很完美的主题</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="#">没有</a></li>
                                    <li><a target="_blank" href="#">网上找的各种素材</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@option.import_js />