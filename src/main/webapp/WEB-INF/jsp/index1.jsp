<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>


<!--
 _____    _____       ___   _____        _   _   _____   _____    _____  
|  _  \  | ____|     /   | |  _  \      | | | | | ____| |  _  \  | ____| 
| |_| |  | |__      / /| | | | | |      | |_| | | |__   | |_| |  | |__   
|  _  /  |  __|    / / | | | | | |      |  _  | |  __|  |  _  /  |  __|  
| | \ \  | |___   / /  | | | |_| |      | | | | | |___  | | \ \  | |___  
|_|  \_\ |_____| /_/   |_| |_____/      |_| |_| |_____| |_|  \_\ |_____| 


如果你打算复制我的代码，请先花半分钟时间看看这里
================================================

网站上线以来，发现有不少人直接复制我的所有代码和文件，稍作修改就变成了自己的网站，某些和我有
相同爱好的人甚至连文字和我的摄影作品都不放过——只是修改了自我介绍而已，更有甚者在未征得本人
同意的情况下就把我的代码应用到了商业项目中。

当然，我并不反对大家研究这些代码或在其基础上进行二次创作，这也是我对代码进行了详细注释的原因。
我只希望你能够在页面底部注明“页面样式参考 Dandy Weng 的个人网站”并链接到这里。最好是在动手
前先通过 Email 或微博征得我的同意并保证不将其应用到商业项目中，切记将 JavaScript、CSS 和图片
等外部资源文件都保存到你自己的服务器上，不要直接外链，否则会给我的服务器增加额外的负担。
另外，希望你能尽可能的修改页面布局和内容，不要直接使用我的文字和图片。

对我劳动成果的尊重，也就是对我的尊重。简而言之一句话：欢迎借鉴，拒绝山寨。

-->

<!DOCTYPE html>
<!--[if lt IE 9]>
<html id="ie8" lang="zh-CN">
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html lang="zh-CN" manifest="cache.manifest">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<meta name="Description"
	content="翁天信（Dandy Weng）的个人网站。一个17岁的Homeschooler，爱好旅行、摄影和创造。整个世界都是我的学校。自由的身心定能使我成为一个一直朝前行走的行者。" />
<meta name="keywords" content="翁天信,Dandy Weng" />
<meta name="Author" contect="Dandy Weng"/ >
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="format-detection" content="telephone=no" />
<link rel="shortcut icon" href="/images/favicon.ico" />
<link rel="icon" href="/images/favicon.ico" />

<!-- iOS Web App -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-title" content="翁天信" />
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<link rel="apple-touch-icon-precomposed" href="/images/ios/icon.png" />
<!-- iPhone -->
<link href="http://dandyweng.qiniudn.com/images/ios/320x460.png"
	media="(device-width: 320px) and (device-height: 480px)
         and (-webkit-device-pixel-ratio: 1)"
	rel="apple-touch-startup-image" />

<!-- iPhone (Retina) -->
<link href="http://dandyweng.qiniudn.com/images/ios/640x920.png"
	media="(device-width: 320px) and (device-height: 480px)
         and (-webkit-device-pixel-ratio: 2)"
	rel="apple-touch-startup-image" />

<!-- iPhone 5 -->
<link href="http://dandyweng.qiniudn.com/images/ios/640x1096.png"
	media="(device-width: 320px) and (device-height: 568px)
         and (-webkit-device-pixel-ratio: 2)"
	rel="apple-touch-startup-image" />

<!-- iPad -->
<link href="http://dandyweng.qiniudn.com/images/ios/768x1004.png"
	media="(device-width: 768px) and (device-height: 1024px)
         and (orientation: portrait)
         and (-webkit-device-pixel-ratio: 1)"
	rel="apple-touch-startup-image" />
<link href="http://dandyweng.qiniudn.com/images/ios/748x1024.png"
	media="(device-width: 768px) and (device-height: 1024px)
         and (orientation: landscape)
         and (-webkit-device-pixel-ratio: 1)"
	rel="apple-touch-startup-image" />

<!-- iPad (Retina) -->
<link href="http://dandyweng.qiniudn.com/images/ios/1536x2008.png"
	media="(device-width: 768px) and (device-height: 1024px)
         and (orientation: portrait)
         and (-webkit-device-pixel-ratio: 2)"
	rel="apple-touch-startup-image" />
<link href="http://dandyweng.qiniudn.com/images/ios/1496x2048.png"
	media="(device-width: 768px) and (device-height: 1024px)
         and (orientation: landscape)
         and (-webkit-device-pixel-ratio: 2)"
	rel="apple-touch-startup-image" />

<!-- Bootstrap  -->
<link href="http://dw-resources.qiniudn.com/bootstrap/global.min.css"
	rel="stylesheet" media="screen" />
<link
	href="http://dw-resources.qiniudn.com/bootstrap/responsive.min.css"
	rel="stylesheet" media="screen" />
<!-- jVectormap -->
<link
	href="http://dw-resources.qiniudn.com/map/css/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" media="screen" />
<link href="http://fonts.googleapis.com/css?family=Quattrocento+Sans"
	rel="stylesheet" type="text/css" />

<!-- bootstrap css -->
<link href="css/main.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="http://dw-resources.qiniudn.com/js/jquery-1.9.1.min.js"></script>

<!--[if lt IE 9]>
<script type="text/javascript" src="http://dw-resources.qiniudn.com/js/html5.js"></script> 
<![endif]-->

<title>翁天信 · Dandy Weng</title>


</head>

<body data-spy="scroll" data-target=".navbar" onload="completed();"
	ontouchstart="">

	<div id="navbar" class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>

				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#banner">简述</a></li>
						<li><a href="#travel">旅行</a></li>
						<li><a href="#photography">摄影</a></li>
						<li><a href="#creativity">创造</a></li>
						<li><a href="#apple">苹果</a></li>
						<li><a href="#contact">联系</a></li>
						<li><a href="#about">关于</a></li>
					</ul>
				</div>

				<ul class="nav">
					<li><a href="http://blog.dandyweng.com" target="_blank">博客</a></li>
					<li><a href="http://www.camarts.cn" target="_blank">作品</a></li>
					<li><a href="http://weibo.com/dandyweng" target="_blank">微博</a></li>
				</ul>

			</div>
		</div>
	</div>

	<!--[if lt IE 9]>
    <div class="alert alert-block ie-alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4>浏览器版本过低</h4>
        <br>
        <p>你知道不？你还在用十年前的浏览器！这个网页上的有很多好看的东西和动画效果都显示不了！</p>
        <p>建议赶快<a href="http://windows.microsoft.com/zh-cn/internet-explorer/downloads/ie-10/worldwide-languages" target="_blank">升级</a>你的浏览器版本或使用 <a href="http://www.google.com/intl/zh-CN/chrome/browser/" target="_blank">Chrome</a> 或 <a href="http://www.apple.com.cn/safari/" target="_blank">Safari</a> 等高级浏览器。</p>
    </div>
<![endif]-->

	<header id="banner" class="hero-unit no-radius">
		<div class="container text-center">
			<h1>
				<img src="http://dandyweng.qiniudn.com/images/title.png"
					alt="Dandy Weng">
			</h1>
			<!-- <p>网站正在建设中</p> -->
		</div>
		<span class="banner-link hidden-phone"><a
			href="http://www.camarts.cn/archives/1759.html" target="_blank">《尕海小景》</a></span>
	</header>

	<div class="shadow"></div>

	<article class="container">

		<!--  简述 Description  -->

		<section id="description" class="row description">
			<div
				class="span10 offset1 panel-description button-text-panel text-center">
				<div class="padding-middle">
					<img class="profile img-circle loading"
						src="http://dandyweng.qiniudn.com/images/picture.jpg">
					<h4>我是翁天信，一个 17 岁的 Homeschooler，爱好旅行、摄影和创造。</h4>
					<h5>上世纪九十年代中期生于广州。整个世界都是我的学校。学自己之所想所爱。自由的身心定能使我成为一个一直朝前行走的行者。</h5>
					<hr class="soften">
					<p>
						<span class="hidden-phone">这是我的个人网站，</span>欢迎访问<a
							href="http://blog.dandyweng.com" target="_blank">我的博客</a>和<a
							href="http://www.camarts.cn" target="_blank">摄影网站</a>
					</p>
					<!--  <p><span class="label label-warning">注意</span> 网站正在更新中，缓存功能已关闭，且页面会出现某些异常，建议稍后再访问</p>  -->
				</div>
			</div>
		</section>

		<div id="loading" class="text-center">
			<img class="spinner"
				src="http://dandyweng.qiniudn.com/images/spinner.gif"> <span>加载中</span>
		</div>

		<!--  旅行 Travel  -->

		<section id="travel" class="row">
			<div class="span12 panel">
				<div class="row">
					<div class="span6">
						<div class="block-left">
							<h1>旅行</h1>
							<p class="wo">我是一个爱旅行的人，每年有将近四分之一的时间都在路上。走遍世界周游列国，对我而言并不止于是个梦想而已。</p>
							<br>
							<p class="wo">我觉得，中国很大，可世界更大。就像你在这个地图上看到的，我 18
								岁前就在大半个中国留下了足迹。这个国家就像一台回旋加速器，我环游加速之后就会奔向世界，那时候的我将成为一个新的自己，一种新的元素。</p>
							<br> <a href="#aboutMaps" data-toggle="modal">关于地图数据</a> <span
								class="muted" style="margin: 10px; cursor: default;"> | </span>
							<a href="http://travel.dandyweng.com/china/" target="_blank">我的旅行足迹
								»</a>

							<!-- Modal -->
							<div id="aboutMaps" class="modal hide fade" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h3 id="myModalLabel">关于地图数据</h3>
								</div>

								<div class="modal-body">
									<p>
										地图数据来自 <a href="http://www.naturalearthdata.com/"
											target="_blank">Natural Earth</a>
									</p>
									<p>该地图为中华人民共和国地图，并非中国地图，故无台湾。</p>
									<p class="text-error">
										· <small>以中华人民共和国直接统治区域和有效管辖领土为准，若对此有异议，请参考 Wikipedia
											中的 <a
											href="http://zh.wikipedia.org/wiki/%E4%B8%AD%E5%9B%BD_(%E6%B6%88%E6%AD%A7%E4%B9%89)"
											target="_blank">中国</a>、<a
											href="http://zh.wikipedia.org/wiki/%E4%B8%AD%E5%9C%8B%E5%A4%A7%E9%99%B8"
											target="_blank">中国大陆</a>、<a
											href="http://zh.wikipedia.org/wiki/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD"
											target="_blank">中华人民共和国</a> 和 <a
											href="http://zh.wikipedia.org/wiki/%E4%B8%AD%E8%8F%AF%E6%B0%91%E5%9C%8B"
											target="_blank">中华民国</a> 等条目。
										</small>
									</p>

									<hr class="soften">

									<h4>关于坐标点数据</h4>
									<p>地图中以红点标示的为我曾到达过的城市，其中：</p>
									<ul>
										<li><p>若新到达的城市旁已有相邻的曾到达城市，且经度和（或）纬度相差小于 1°
												的，仅标示最先到达的城市；</p></li>
										<li><p>2009 年或更早的坐标信息，来源于在 Google 地图 查询中到的该城市坐标，2010
												年后的坐标信息来源于使用 iPhone 在当地所拍摄照片时所记录的 GPS 信息；</p></li>
										<li><p>坐标点和其中所标出的到达年份为非完整数据；</p></li>
										<li><p>最后更新时间：2013 年 7 月</p></li>
									</ul>
								</div>
								<div class="modal-footer">
									<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
								</div>
							</div>
						</div>
					</div>

					<div class="span6">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</section>

		<!--  摄影 Photography  -->

		<section id="photography" class="row">
			<div class="span12 panel">
				<div class="row">
					<div class="span8">
						<div id="photograph" class="carousel slide">
							<ol class="carousel-indicators">
								<li data-target="#photograph" data-slide-to="0" class="active">
								</li>
								<li data-target="#photograph" data-slide-to="1"></li>
								<li data-target="#photograph" data-slide-to="2"></li>
								<li data-target="#photograph" data-slide-to="3"></li>
								<li data-target="#photograph" data-slide-to="4"></li>
								<li data-target="#photograph" data-slide-to="5"></li>
								<li data-target="#photograph" data-slide-to="6"></li>
								<li data-target="#photograph" data-slide-to="7"></li>
								<li data-target="#photograph" data-slide-to="8"></li>
								<li data-target="#photograph" data-slide-to="9"></li>
							</ol>
							<!-- Carousel items -->
							<div class="carousel-inner">
								<div class="active item">
									<a href="http://www.camarts.cn/archives/549.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-01.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/523.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-02.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/594.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-03.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/532.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-04.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/439.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-05.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/542.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-06.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/638.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-07.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/632.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-08.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/647.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-09.jpg"></a>
								</div>
								<div class="item">
									<a href="http://www.camarts.cn/archives/1453.html"
										title="在 Camarts™ 中浏览" target="_blank"><img
										src="http://dandyweng.qiniudn.com/images/carousel/carousel-10.jpg"></a>
								</div>
							</div>

							<a class="carousel-control left" href="#photograph"
								data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
								href="#photograph" data-slide="next">&rsaquo;</a>
						</div>
					</div>

					<div class="span4">
						<div class="padding-large">
							<h1>摄影</h1>
							<p class="wo">我爱摄影，尤其是壮美的自然风光。我以为，学富五车不如阅人无数，阅人无数不如行万里路。因为旅行，我爱上了摄影；因为爱上了摄影，我才更热爱旅行。</p>

							<a href="http://www.camarts.cn" target="_blank"
								class="btn btn-info btn-large button">浏览我的摄影作品</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--  创造 Creativity  -->

		<section id="creativity" class="row">
			<div class="span12 panel">
				<div class="row">
					<div class="span8">
						<!-- Content -->
						<div class="row">
							<!--  创造 Creativity  -->
							<div class="span8">
								<div class="block-left">
									<h1>创造</h1>
									<p class="wo">我热爱一切美好的新事物，更喜欢创造。除摄影外，设计和编程应该是我目前最喜欢、且最能发挥我创造力的爱好。一个是大胆的创意，一个是严谨的逻辑，看似矛盾，但对我来说却能很好地融为一体。</p>
								</div>
							</div>

							<!--  设计 Design  -->
							<div class="span4">
								<div class="design">
									<h3>设计</h3>
									<p class="wo">我设计过各种各样的东西：从平面到三维、从人机交互到网络管理系统与标准操作流程，甚至家具和装修……当然，还有我的人生。目前，我发现网页设计是编程和设计的一个很好的结合点，所以我现在非常喜欢制作网站。</p>
								</div>
							</div>

							<!--  编程 Programming  -->
							<div class="span4">
								<div class="programming">
									<h3>编程</h3>
									<p class="wo">我从小就对电脑和各类数码产品充满无限的兴趣。七岁学会重装系统，九岁学会组装电脑，12
										岁开始对编程感兴趣并开始学习一些脚本语言和 Visual Basic，14 岁开始转向 Web
										开发，目前还在不断学习新的编程语言。我喜欢编程，就是因为它赋予我一种严谨而又富有创造性的逻辑思维方式。</p>
								</div>
							</div>
						</div>
					</div>
					<div class="span4 relative">
						<!-- Carousel -->
						<div id="showcase" class="carousel slide screenshots">
							<div class="carousel-inner">
								<div class="active item">
									<img
										src="http://dandyweng.qiniudn.com/images/camarts-screenshot.png"
										class="screenshot-img">
								</div>
								<div class="item">
									<img
										src="http://dandyweng.qiniudn.com/images/camarts-mobile-combined-mockup.png"
										class="iphone-mockup">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--  苹果 Apple  -->

		<section id="apple" class="row">
			<div class="span12 panel relative">
				<img class="ribbon-apple"
					src="http://dandyweng.qiniudn.com/images/ribbon-apple.png">
				<div class="row">
					<div class="span6">
						<img class="ipad-news"
							src="http://dandyweng.qiniudn.com/images/mockedup-news.png">
					</div>

					<div class="span6">
						<div class="padding-huge">
							<h1>Apple</h1>
							<p class="wo">我对 Apple 产品的热爱近乎狂热，是一名真正的铁杆果粉。在 Steve Jobs
								时代，我拥有近乎全系列的 Apple 产品。Apple 不但蕴含着一种高贵的灵魂，还透射出一种独特的魅力。我通宵排队 14
								小时，买到了中国地区的第一台 iPad 2；之后又为了买 iPhone 4S 排队足足 20
								小时。后来还被腾讯网评为“超级果粉”第一名。</p>
							<br> <a class="visible-desktop"
								href="http://www.google.com/hostednews/afp/article/ALeqM5h9IrITObDmUmYjG8_3iAwiPwrwCQ?docId=CNG.ce7c362a719710baba258bff00b37376.721"
								target="_blank">相关新闻报道 »</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--  联系 Contact  -->

		<section id="contact" class="row">
			<div class="span12 panel">
				<div class="row">
					<div class="span12">
						<div class="padding-large">
							<h1>联系</h1>
							<div class="muiti-contact">
								<span class="email"><email data-toggle="tooltip"
										title="Email">dandyweng</email>
									<at>@</at>
									<sns data-toggle="tooltip" title="社交网络">dandyweng</sns>
									<web data-toggle="tooltip" title="个人网站">.com</web></span>
								<!--[if lt IE 9]>
                            <p class="text-warning">当前浏览器不支持该模块的交互效果，无法动态展示联系方式，建议换用更高级的浏览器。</p>
                            <p class="text-info">Twitter, Instagram, Path, 新浪微博、腾讯微博和微信的名称为 @dandyweng</p>
                            <![endif]-->
							</div>
						</div>
					</div>

					<div class="span12">
						<div class="padding-large">
							<div class="sns">
								<div class="sns-container">
									<a href="http://www.facebook.com/dandyweng" target="_blank"><div
											id="icon-facebook" class="sns-icon" data-toggle="tooltip"
											title="Facebook">
											<img
												src="http://dandyweng.qiniudn.com/images/sns/facebook.png">
										</div></a> <a href="http://twitter.com/dandyweng" target="_blank"><div
											id="icon-twitter" class="sns-icon" data-toggle="tooltip"
											title="Twitter">
											<img
												src="http://dandyweng.qiniudn.com/images/sns/twitter.png">
										</div></a> <a href="http://instagram.com/dandyweng" target="_blank"><div
											id="icon-instagram" class="sns-icon" data-toggle="tooltip"
											title="Instagram">
											<img
												src="http://dandyweng.qiniudn.com/images/sns/instagram.png">
										</div></a> <a href="javascript:;" target="_blank"><div
											id="icon-path" class="sns-icon" data-toggle="tooltip"
											title="Path">
											<img src="http://dandyweng.qiniudn.com/images/sns/path.png">
										</div></a>
								</div>
								<div class="sns-container">
									<a href="http://weibo.com/dandyweng" target="_blank"><div
											id="icon-sinaweibo" class="sns-icon" data-toggle="tooltip"
											title="新浪微博">
											<img
												src="http://dandyweng.qiniudn.com/images/sns/SinaWeibo.png">
										</div></a> <a href="http://t.qq.com/dandyweng" target="_blank"><div
											id="icon-tencentweibo" class="sns-icon" data-toggle="tooltip"
											title="腾讯微博">
											<img
												src="http://dandyweng.qiniudn.com/images/sns/TencentWeibo.png">
										</div></a> <a href="javascript:;" target="_blank"><div
											id="icon-wechat" class="sns-icon" data-toggle="tooltip"
											title="微信">
											<img src="http://dandyweng.qiniudn.com/images/sns/wechat.png">
										</div></a> <a href="javascript:;" target="_blank"><div id="icon-qq"
											class="sns-icon" data-toggle="tooltip" title="QQ 暂时保密">
											<img src="http://dandyweng.qiniudn.com/images/sns/qq.png">
										</div></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--  关于 About  -->

		<section id="about" class="row">
			<div class="span12 panel text-center relative">
				<img class="ribbon-version"
					src="http://dandyweng.qiniudn.com/images/ribbon-2013.png"
					alt="2013 版">
				<div class="padding-large">
					<h1>关于</h1>
					<hr class="soften">
					<p>这个网站每年都会被彻底地重新设计和制作一次，以集中展示我的最新设计理念和在过去一年中所学到的 Web 开发知识。</p>
					<p>
						今年已经是第四个版本，采用栅格化<a
							href="http://www.responsinator.com/?url=www.dandyweng.com"
							target="_blank" title="看看这个网站在不同分辨率下的表现">响应式</a>布局，应用了多种实验性 CSS
						元素和大量动画效果，
					</p>
					<p>并支持 Retina 高清屏幕和 iOS Web App，还有基于 HTML 5 的离线缓存和 Canvas
						绘图等技术。</p>
					<p>
						<a
							href="http://blog.dandyweng.com/2013/07/how-my-website-was-created/"
							target="_blank" title="我的个人网站是怎么做出来的">详情 »</a>
					</p>
					<a href="http://www.responsinator.com/?url=www.dandyweng.com"
						target="_blank" title="看看这个网站在不同分辨率下的表现" alt="响应式布局"><img
						class="img-responsive"
						src="http://dandyweng.qiniudn.com/images/responsive.png"
						alt="响应式设计"></a>
					<p>因开发调试时间有限，无法保证各浏览器的兼容性，建议使用最新版本的 Chrome 或 Mac 版 Safari 浏览。</p>
					<p>之前的三个版本已经在下方列出，有兴趣的可以看看我在这方面的成长之路。</p>
				</div>

				<div class="row">
					<div class="span6 offset3">
						<ul class="thumbnails">
							<li class="span2"><a class="thumbnail"
								href="http://www.dandyweng.com/versions/2012" target="_blank">
									<img src="http://dandyweng.qiniudn.com/images/2012.png"
									data-src="http://dandyweng.qiniudn.com/images/2012.png" alt="">
									<h3>2012</h3>
									<p>
										<small>采用模块化、响应式设计，应用了一些 CSS 动画</small>
									</p>
							</a></li>

							<li class="span2"><a class="thumbnail"
								href="http://www.dandyweng.com/versions/2011" target="_blank">
									<img src="http://dandyweng.qiniudn.com/images/2011.png"
									data-src="http://dandyweng.qiniudn.com/images/2011.png" alt="">
									<h3>2011</h3>
									<p>
										<small>首个 HTML5 网页，开始应用少量 CSS3 特性</small>
									</p>
							</a></li>

							<li class="span2"><a class="thumbnail"
								href="http://www.dandyweng.com/versions/2010" target="_blank">
									<img src="http://dandyweng.qiniudn.com/images/2010.png"
									data-src="http://dandyweng.qiniudn.com/images/2010.png" alt="">
									<h3>2010</h3>
									<p>
										<small>我的第一个网站，不解释</small><br>
										<br>
									</p>
							</a></li>
						</ul>
					</div>

					<div class="span12">
						<div class="padding-large" style="padding-top: 0;">
							<hr class="soften">
							<p>谢绝一切商业性摄影、设计或 Web 开发相关工作的邀请，我从不为他人进行创作，与费用无关，望理解。</p>
							<p>Designed and Developed by Dandy Weng. BY-NC-SA License.</p>
							<p>Copyright © 2010 - 2013 Dandy Weng. All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</section>

	</article>

	<script type="text/javascript"
		src="http://dw-resources.qiniudn.com/bootstrap/scripts.min.js"></script>
	<script type="text/javascript"
		src="http://dw-resources.qiniudn.com/map/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script type="text/javascript"
		src="http://dw-resources.qiniudn.com/map/js/jquery-jvectormap-cn-merc-cn.js"></script>
	<script type="text/javascript"
		src="http://dandyweng.qiniudn.com/js/home.js"></script>
	<p style="text-indent: -9999px;">
		<script src="http://s9.cnzz.com/stat.php?id=3817169&web_id=3817169"
			language="JavaScript"></script>
	</p>

</body>
</html>