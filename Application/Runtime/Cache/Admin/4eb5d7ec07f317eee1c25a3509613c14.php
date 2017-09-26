<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>控制台-阿米巴后台管理系统</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="/amiba/Public/Admin/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/amiba/Public/Admin/assets/css/font-awesome.min.css" />
		
        <link rel="stylesheet" type="text/css" href="/amiba/Public/datetimepicker/jquery.datetimepicker.css"/>
		<!--[if IE 7]>
		  <link rel="stylesheet" href="/amiba/Public/Admin/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->
        
	
		<!-- ace styles -->

		<link rel="stylesheet" href="/amiba/Public/Admin/assets/css/ace.min.css" />
		<link rel="stylesheet" href="/amiba/Public/Admin/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="/amiba/Public/Admin/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="/amiba/Public/Admin/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="/amiba/Public/Admin/assets/js/ace-extra.min.js"></script>
        <style>
        .required {
            background:url(/amiba/Public/Admin/assets/images/red_asterisk.png) no-repeat 98% center!important;
        }
        .errors {
        	background: url(/amiba/Public/Admin/assets/images/invalid.png) no-repeat 98% center!important;
        }
        .trues {
        	background: #fff url(/amiba/Public/Admin/assets/images/valid.png) no-repeat 98% center!important;
        }
        </style>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        
		<!--[if lt IE 9]>
		<script src="/amiba/Public/Admin/assets/js/html5shiv.js"></script>
		<script src="/amiba/Public/Admin/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							
							阿米巴-后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<!-- <li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-ok"></i>
									还有4个任务完成
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">软件更新</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:65%" class="progress-bar "></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">硬件更新</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">单元测试</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">错误修复</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										查看任务详情
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->






						<!-- <li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8条通知
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												新闻评论
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary icon-user"></i>
										切换为编辑登录..
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												新订单
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												粉丝
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										查看所有通知
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->






						<!-- <li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i>
									5条消息
								</li>

								<li>
									<a href="#">
										<img src="/amiba/Public/Admin/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Alex:</span>
												不知道写啥 ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>1分钟以前</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="/amiba/Public/Admin/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Susan:</span>
												不知道翻译...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>20分钟以前</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="/amiba/Public/Admin/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Bob:</span>
												到底是不是英文 ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>下午3:15</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="inbox.html">
										查看所有消息
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->








						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<!-- <img class="nav-user-photo" src="/amiba/Public/Upload/<?php echo ($_SESSION['admin']['photo']); ?>" alt="Jason's Photo" /> -->
								<span class="user-info">
									<small>欢迎光临,</small>
									<?php echo ($_SESSION['admin']['name']); ?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close" >
								<!-- <li>
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li> -->

								<li class="divider"></li>

								<li>
									<a href="/amiba/index.php/Admin/Login/loginOut">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->















			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
							
						<li>
							<a href="/amiba/index.php/Admin" class="dropdown-toggle">
								<i class="icon-home"></i>
								<span class="menu-text"> 后台首页 </span>
							</a>
						</li>
						
						<!-- <li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-lock"></i>
								<span class="menu-text"> 权限管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Admin/index.html">
										<i class="icon-double-angle-right"></i>
										管理员列表
									</a>
								</li>
								<li>
									<a href="/amiba/index.php/Admin/Admin/add.html">
										<i class="icon-double-angle-right"></i>
										添加管理员
									</a>
								</li>
								<li>
									<a href="/amiba/index.php/Admin/Group/index.html">
										<i class="icon-double-angle-right"></i>
										管理组列表
									</a>
								</li>
								<li>
									<a href="/amiba/index.php/Admin/Group/add.html">
										<i class="icon-double-angle-right"></i>
										添加管理组
									</a>
								</li>
								<li>
									<a href="/amiba/index.php/Admin/Auth/ruleIndex.html">
										<i class="icon-double-angle-right"></i>
										权限列表
									</a>
								</li>

								<li>
									<a href="/amiba/index.php/Admin/Auth/addRule.html">
										<i class="icon-double-angle-right"></i>
										添加权限
									</a>
								</li>
								
							</ul>
						</li> -->






						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text"> 管理员管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/User/index.html">
										<i class="icon-double-angle-right"></i>
										管理员列表
									</a>
								</li>

								<li>
									<a href="/amiba/index.php/Admin/User/add.html">
										<i class="icon-double-angle-right"></i>
										添加管理员
									</a>
								</li>
							</ul>
						</li>

						<!-- <li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 类型管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Type/index.html">
										<i class="icon-double-angle-right"></i>
										类型列表
									</a>
								</li>
										
								<li>
									<a href="/amiba/index.php/Admin/Type/add_parent">
										<i class="icon-double-angle-right"></i>
										添加分区
									</a>
								</li>
										
								</ul>
						</li> -->
                        <li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 分类管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Category/index.html">
										<i class="icon-double-angle-right"></i>
										分裂列表
									</a>
								</li>

								<li>
									<a href="/amiba/index.php/Admin/Category/add.html">
										<i class="icon-double-angle-right"></i>
										添加分类
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 阿米巴课程管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Traincourse/index.html">
										<i class="icon-double-angle-right"></i>
										课程列表
									</a>
								</li>
										
								<li>
									<a href="/amiba/index.php/Admin/Traincourse/add.html">
										<i class="icon-double-angle-right"></i>
										添加课程
									</a>
								</li>
										
								</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 阿米巴新闻管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Ambnews/index.html">
										<i class="icon-double-angle-right"></i>
										新闻列表
									</a>
								</li>
										
								<li>
									<a href="/amiba/index.php/Admin/Ambnews/add.html">
										<i class="icon-double-angle-right"></i>
										添加新闻
									</a>
								</li>
										
								</ul>
						</li>


						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 阿米巴内训管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Incourse/index.html">
										<i class="icon-double-angle-right"></i>
										内训案例列表
									</a>
								</li>
										
								<li>
									<a href="/amiba/index.php/Admin/Incourse/add.html">
										<i class="icon-double-angle-right"></i>
										添加内训案例
									</a>
								</li>
										
								</ul>
						</li>
						
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i>
								<span class="menu-text"> 讲师管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Lecturer/index.html">
										<i class="icon-double-angle-right"></i>
										讲师列表
									</a>
								</li>

								<li>
									<a href="/amiba/index.php/Admin/Lecturer/add.html">
										<i class="icon-double-angle-right"></i>
										添加讲师
									</a>
								</li>
							</ul>
						</li>
							
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 轮播图管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Carousel/index.html">
										<i class="icon-double-angle-right"></i>
										轮播图列表
									</a>
								</li>

								<li>
									<a href="/amiba/index.php/Admin/Carousel/add.html">
										<i class="icon-double-angle-right"></i>
										添加轮播图
									</a>
								</li>
							</ul>
						</li>
						
						<!-- <li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-bullhorn"></i>
								<span class="menu-text"> 广告管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Adv/index.html">
										<i class="icon-double-angle-right"></i>
										广告列表
									</a>
								</li>
								<li>
									<a href="/amiba/index.php/Admin/Adv/add.html">
										<i class="icon-double-angle-right"></i>
										添加广告
									</a>
								</li>
							</ul>
						</li> -->
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-cogs"></i>
								<span class="menu-text"> 网站配置 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="/amiba/index.php/Admin/Config/index.html">
										<i class="icon-double-angle-right"></i>
										配置信息
									</a>
								</li>
							</ul>
						</li>
						
						
						

			
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				
<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="/amiba/index.php/Index/index.html">后台主页</a>
							</li>

							<li>
								<a href="#">讲师管理</a>
							</li>
							<li class="active">讲师列表</li>
						</ul><!-- .breadcrumb -->

						
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								讲师管理
								<small>
									<i class="icon-double-angle-right"></i>
									讲师列表
								</small>
							</h1>
						</div><!-- /.page-header -->
						
						<!--搜索-->
						<form class="form-search" method="get" action="/amiba/index.php/Admin/Lecturer/index">
							<div>
								<span>讲师名称：</span>
								<input type="text" name="name" placeholder="请输入讲师名称" class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<input type="submit" value="查询" class="btn btn-xs btn-primary">
							</div>
							<br/>
						</form>
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										
										<div class="table-header">
											&nbsp;
										</div>
										<form action="/amiba/index.php/Admin/Lecturer/del" method="post">
										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label>
																<input onclick= "return confirm('你确定要删除吗')" type="submit" value="删除" class="btn btn-primary btn-xs">
															</label>
														</th>
														<th>编号</th>
														<th>讲师名称</th>
														
														<th class="hidden-480">
														状态
														</th>
														<th class="hidden-480">
														添加时间
														</th>
														<th>操作</th>
													</tr>
												</thead>
											
										
												<tbody>
												<?php if(is_array($lecturer)): foreach($lecturer as $key=>$vo): ?><tr>
														<td class="center">
															<label>
																<input type="checkbox" name="id[]" value="<?php echo ($vo["id"]); ?>" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															
													     <?php echo ($num++); ?>
															
														</td>
														<td><?php echo ($vo["name"]); ?></td>
														<td><?php if($vo["status"] == '1'): ?>激活<?php else: ?>禁用<?php endif; ?></td>
														<td class="hidden-480"><?php echo (date("Y-m-d H:i:s",$vo["addtime"])); ?></td>
														
														<td>
														
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																<a class="blue" href="/amiba/index.php/Admin/Lecturer/status/id/<?php echo ($vo["id"]); ?>/status/<?php echo ($vo["status"]); ?>">
																	<i class="icon-lock">
																		<?php if($vo["status"] == '1'): ?>禁用<?php else: ?>激活<?php endif; ?>
																	
																	</i>
																	
																</a>

																<a class="green" href="/amiba/index.php/Admin/Lecturer/mod/id/<?php echo ($vo["id"]); ?>">
																	<i class="icon-pencil bigger-110">修改</i>
																	
																</a>

																<a class="red" onclick="return confirm('你确认要删除吗')" href="/amiba/index.php/Admin/Lecturer/del/id/<?php echo ($vo["id"]); ?>">
																	<i class="icon-trash bigger-110">删除</i>
																</a>
															</div>
														</td>
														
															
															</div>
														
														
													</tr><?php endforeach; endif; ?>
												<tr>
													<td colspan="8"><?php echo ($page); ?></td>
												</tr>
													
												</tbody>
											
											
											</table>
											</form>
										</div>
									</div>
								</div>

								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													Results for "Latest Registered Domains
												</div>
											</div>

											<div class="modal-body no-padding">
												<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
													<thead>
														<tr>
															<th>Domain</th>
															<th>Price</th>
															<th>Clicks</th>

															<th>
																<i class="icon-time bigger-110"></i>
																Update
															</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>
																<a href="#">ace.com</a>
															</td>
															<td>$45</td>
															<td>3,330</td>
															<td>Feb 12</td>
														</tr>

														<tr>
															<td>
																<a href="#">base.com</a>
															</td>
															<td>$35</td>
															<td>2,595</td>
															<td>Feb 18</td>
														</tr>

														<tr>
															<td>
																<a href="#">max.com</a>
															</td>
															<td>$60</td>
															<td>4,400</td>
															<td>Mar 11</td>
														</tr>

														<tr>
															<td>
																<a href="#">best.com</a>
															</td>
															<td>$75</td>
															<td>6,500</td>
															<td>Apr 03</td>
														</tr>

														<tr>
															<td>
																<a href="#">pro.com</a>
															</td>
															<td>$55</td>
															<td>4,250</td>
															<td>Jan 21</td>
														</tr>
													</tbody>
												</table>
											</div>

											<div class="modal-footer no-margin-top">
												<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="icon-remove"></i>
													Close
												</button>

												<ul class="pagination pull-right no-margin">
													<li class="prev disabled">
														<a href="#">
															<i class="icon-double-angle-left"></i>
														</a>
													</li>

													<li class="active">
														<a href="#">1</a>
													</li>

													<li>
														<a href="#">2</a>
													</li>

													<li>
														<a href="#">3</a>
													</li>

													<li class="next">
														<a href="#">
															<i class="icon-double-angle-right"></i>
														</a>
													</li>
												</ul>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->


				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">切换到左边</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<!--<script src="/amiba/Public/Admin/assets/js/jquery-2.0.3.min.js"></script>-->
		<script src="/amiba/Public/Admin/assets/js/jquery-2.0.3.min.js"></script>
		

		<!-- <![endif]-->

		<!--[if IE]>
<script src="/amiba/Public/Admin/assets/js/jquery-1.10.2.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='/amiba/Public/Admin/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='/amiba/Public/Admin/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/amiba/Public/Admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="/amiba/Public/Admin/assets/js/bootstrap.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="/amiba/Public/Admin/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="/amiba/Public/Admin/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/jquery.slimscroll.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/jquery.sparkline.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/flot/jquery.flot.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="/amiba/Public/Admin/assets/js/ace-elements.min.js"></script>
		<script src="/amiba/Public/Admin/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
         <script>
       $(function(){
           $('.required').blur(function(){
               var data = $(this).val();
               var classlist = $(this).attr('class');
               if(!data) {
               	   if(classlist.indexOf("required") > 0) {
               	   	   $(this).removeClass('required');
                       $(this).addClass('errors');
               	   } else {
               	   	   $(this).removeClass('trues');
                       $(this).addClass('errors');
               	   }
                   
                   
               } else {
                   if(classlist.indexOf("required") > 0) {
                   	   $(this).removeClass('required');
                       $(this).addClass('trues');
                       
                   } else {
                       $(this).removeClass('errors');
                       $(this).addClass('trues');
                   }
               	   
               }
               
           })
           $(".areadata").blur(function(){

               alert('不能为空，请重新填写');
           })
           
           $('.formvail').click(function(){
               var list = $('.required').val();
               if(!list) {
                alert('不能为空，请重新填写');
                return false;
               }
           })

       })
   </script>
		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
				});
			
			
			
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
			
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').slimScroll({
					height: '300px'
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) 
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
				
			
			})
		</script>
	</body>
</html>