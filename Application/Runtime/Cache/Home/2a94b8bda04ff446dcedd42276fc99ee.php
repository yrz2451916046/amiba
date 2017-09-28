<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="/Public/Home/js/jquery-1.8.3.min.js"></script>
    <script src="/Public/Home/js/flux.min.js" type="text/javascript" charset="utf-8"></script>

    
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: arial, tahoma, 'Microsoft Yahei', '\5b8b\4f53', sans-serif;
        }
        
        ul li {
            list-style: none;
        }
        
        a {
            text-decoration: none;
            color: #333;
        }
        
        body {
            font-size: 62.5%;
            /*10 ÷ 16 × 100% = 62.5%*/
            color: #333;
        }
        
        html {
            font-family: 'Microsoft Yahei', "Helvetica Neue", Helvetica, Arial, sans-serif, 'Lucida Grande', 'Lucida Sans Unicode', Verdana;
            background: rgb(230, 230, 230);
        }
        
        .nav {
            width: 100%;
            height: 100px;
            background: #fff;
            border-bottom: 1.5px solid lightblue;
            position: fixed;
            left: 0;
            top: 0;
            z-index: 105;
        }
        
        .nav>ul {
            width: 1000px;
            height: 100px;
            _background: red;
            margin: 0 auto;
        }
        
        .nav>ul>li {
            width: 710px;
            height: 100px;
            float: right;
        }
        
        .navlist {
            display: block;
            width: 110px;
            height: 95px;
            margin-left: 10px;
            _background: #20A0FF;
            line-height: 100px;
            text-align: center;
            float: left;
            font-size: 16px;
            cursor: pointer;
            color: rgb(135, 140, 145);
            border-bottom: 5px solid #fff;
        }
        
        .navlist:hover {
            color: #20A0FF;
        }
        
        .homepage {
            width: 100%;
            _height: 1800px;
            _background: rgb(230, 230, 230);
        }
        
        #banner {
            width: 100%;
            height: 450px;
            overflow: hidden;
            margin-top: 100px;
        }
        
        #banner>ul {
            width: 100%;
            height: 450px;
            position: relative;
        }
        
        #banner .picpage {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            display: none;
        }
        
        #banner>ul>li>a {
            display: block;
            width: 100%;
            height: 100%;
        }
        
        #banner .arrow {
            width: 140px;
            height: 30px;
            _background: red;
            position: absolute;
            top: 520px;
            left: 52%;
            margin-left: -100px;
        }
        
        #banner .arrow li {
            float: left;
            width: 10px;
            height: 10px;
            border-radius: 5px;
            background: #e8e8e8;
            margin: 0 10px;
            cursor: pointer;
        }
        
        #banner .arrow .change {
            background: #45494d;
            opacity: 0.5;
        }
        
        #homeintroduce {
            width: 100%;
            height: 400px;
            float: left;
        }
        
        #homeresearch {
            width: 100%;
            height: 400px;
            float: left;
        }
        
        #homecourse {
            width: 100%;
            height: 400px;
            float: left;
        }
        
        .homecourse-safe {
            width: 1000px;
            height: 400px;
            margin: 0 auto;
        }
        
        .homecourse-safe>span {
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homecourse-safe>span:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeintroduce-safe {
            width: 1000px;
            height: 400px;
            margin: 0 auto;
        }
        
        .homeintroduce-left {
            width: 220px;
            height: 350px;
            padding-left: 25px;
            padding-right: 25px;
            box-sizing: border-box;
            float: left;
            background: linear-gradient(to bottom right, #48D1CC, #00FFFF);
            background-size: cover;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeresearch-left {
            width: 220px;
            height: 350px;
            padding-left: 25px;
            padding-right: 25px;
            box-sizing: border-box;
            float: left;
            background: linear-gradient(#fc7382, #fc7de5);
            background-size: cover;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homecourse-left {
            width: 220px;
            height: 350px;
            padding-left: 25px;
            padding-right: 25px;
            box-sizing: border-box;
            float: left;
            background: linear-gradient(#fc7382, #fc7de5);
            background-size: cover;
            position: relative;
            overflow: hidden;
        }
        
        .homeintroduce-left:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeresearch-left:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeintroduce-center {
            width: 450px;
            height: 350px;
            float: left;
            padding-left: 20px;
            padding-right: 20px;
        }
        
        .homeintroduce-top {
            width: 100%;
            height: 165px;
            background: lightblue;
            float: left;
            _position: relative;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeresearch-top {
            width: 100%;
            height: 165px;
            background: lightcoral;
            float: left;
            _position: relative;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeintroduce-top:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeresearch-top:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeintroduce-bott {
            width: 100%;
            height: 165px;
            margin-top: 20px;
            float: left;
        }
        
        .homeintroduce-bottl {
            width: 215px;
            height: 165px;
            float: left;
            background: lightblue;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeintroduce-bottl:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeresearch-bottl {
            width: 215px;
            height: 165px;
            float: left;
            background: lightcoral;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeresearch-bottl:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeintroduce-bottr {
            width: 215px;
            height: 165px;
            float: right;
            background: lightblue;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeintroduce-bottr:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeresearch-bottr {
            width: 215px;
            height: 165px;
            float: right;
            background: lightcoral;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeresearch-bottr:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeintroduce-right {
            width: 220px;
            height: 349px;
            float: left;
            padding-left: 20px;
            padding-right: 20px;
            position: relative;
            border-top: 1px solid #ff6949;
            background: #fff;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeintroduce-right:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .homeresearch-right {
            width: 220px;
            height: 349px;
            float: left;
            padding-left: 20px;
            padding-right: 20px;
            position: relative;
            border-top: 1px solid #ff6949;
            background: #fff;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
        }
        
        .homeresearch-right:hover {
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .feet {
            width: 100%;
            height: 200px;
            background: rgb(255, 255, 255);
            float: left;
            margin-top: 40px;
        }
        
        .feet-safe {
            width: 1000px;
            height: 200px;
            margin: 0 auto;
        }
        
        .feet-safe>ul>li {
            width: 140px;
            height: 140px;
            margin: 30px 18px;
            margin-bottom: 0;
            float: left;
            _border-right: 1px dashed #bfcbd9;
        }
        
        .feet-content {
            display: block;
            width: 140px;
            float: left;
            cursor: pointer;
            color: #626262;
            font-size: 12px;
            line-height: 20px;
            margin: 5px 0;
        }
        
        .feet-title {
            width: 140px;
            _text-align: center;
            font-size: 16px!important;
            line-height: 20px;
            cursor: pointer;
            color: #424242;
            font-weight: 400;
            display: block;
        }
        
        .feet-content:hover {
            color: #ff6949;
        }
        
        .getcolor {
            color: #20A0FF!important;
        }
        
        .homecourse-safe img:hover {
            transform: scale(1.1)
        }
        
        .homeintroduce-top img:hover {
            transform: scale(1.1)
        }
        
        .homeintroduce-bott img:hover {
            transform: scale(1.1)
        }
        
        .homeresearch-top img:hover {
            transform: scale(1.1)
        }
        
        .telephone:hover {
            background: #20A0FF!important;
        }
        
        .returntop:hover {
            background: #20A0FF!important;
        }
    </style>
</head>

<body>
    <!-- nav开始 -->
    <div class="nav">
        <ul>
            <a href="#">
                <img src="../assets/image/discover.png" alt="" style="display:block;width:60px;height:60px;float:left;margin-top:20px;">
            </a>
            <a href="<?php echo U('Index/index');?>" style="font-size:28px;display:block;width:56px;height:60px;line-height:60px;margin-top:20px;float:left;color:#333;">
                联众
            </a>
            <li>
                <?php if($sysign == 1): ?><a href="<?php echo U('Index/index');?>" class="navlist getcolor" style="margin-left:0;">首页</a>
                    <?php else: ?>
                    <a href="<?php echo U('Index/index');?>" class="navlist" style="margin-left:0;">首页</a><?php endif; ?>
                <?php if(is_array($category)): $i = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($id == $vo['id']): ?><a href="<?php echo U('Lists/index',array('id'=>$vo['id']));?>" class="navlist getcolor"><?php echo ($vo["name"]); ?></a>
                        <?php else: ?>
                        <a href="<?php echo U('Lists/index',array('id'=>$vo['id']));?>" class="navlist"><?php echo ($vo["name"]); ?></a><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <!--  <a href="#" class="navlist">阿米巴课程</a>
                <a href="#" class="navlist">阿米巴内训</a>
                <a href="#" class="navlist">阿米巴研究</a> -->
                <?php if($gysign == 1): ?><a href="<?php echo U('Lists/aboutus');?>" class="navlist getcolor">关于我们</a>
                    <?php else: ?>
                    <a href="<?php echo U('Lists/aboutus');?>" class="navlist">关于我们</a><?php endif; ?>
            </li>
        </ul>
    </div>
    <!-- nav结束 -->
    
        <!-- homepage开始 -->
        <div class="homepage">
            <!-- banner -->
            <div id="banner">
                <ul>
                    <?php if(is_array($carousel)): $i = 0; $__LIST__ = $carousel;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vd): $mod = ($i % 2 );++$i;?><li class="picpage">
                            <a target="_blank" href="<?php echo U('Index/carousel',array('url'=>$vd['url']));?>">
                                <img src="/Public/Upload/<?php echo ($vd["icon"]); ?>" alt="">
                            </a>
                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    <!-- <li class="picpage">
                    <a href="">
                        <img src="../../assets/image/02.png" alt="">
                    </a>
                </li> -->
                    <!--  <li class="picpage">
                    <a href="">
                        <img src="/Public/Upload/01.png" alt="">
                    </a>
                </li> -->
                    <!-- <li class="picpage">
                    <a href="">
                        <img src="../../assets/image/02.png" alt="">
                    </a>
                </li> -->
                </ul>
                <ul class="arrow">
                    <li class="change"></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <!-- banner结束 -->
            <!-- 主页公开课 -->

            <div id="homecourse">
                <div class="homecourse-safe">
                    <span style="display:block;float:left;width:970px;height:350px;margin-top:50px;">
                    <div class="homecourse-left">
                        <p style="display:block;color:#fff;border-bottom: solid 1px #fff;padding-bottom:15px;margin-top:28px;margin-bottom:20px;font-size:30px;">阿米巴<br>公开课程</p>
                        <a class="font-changecolor" href="<?php echo U('Traincourse/index',array('id'=>2));?>" style="color:#8D0840;margin-left:-6px;display:block;margin-bottom:10px;white-space:nowrap;font-size:14px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">【面授】<?php echo ($traincourse["name"]); ?></a>
                        <!-- <a class="font-changecolor" href="#" style="color:#8D0840;margin-left:-6px;display:block;margin-bottom:10px;white-space:nowrap;font-size:14px;">【面授】阿米巴精英课程</a> -->
                    </div>
                    <a href="<?php echo U('Traincourse/index',array('id'=>2));?>" style="display:block;width:750px;height:350px;background:#fff;float:left;">
                        <div style="width:100%;height:60%;overflow:hidden;">
                            <img src="/Public/Upload/<?php echo ($traincourse["icon"]); ?>" alt="" style="display:block;width:100%;height:100%;transition: all 0.6s;">
                        </div>
                        <p style="height:40px;padding-left:20px;font-size:22px;line-height:40px;color:#333;">课程简介</p>
                        <span style="display:block;width:94%;height:80px;font-size:14px;line-height:24px;text-indent:28px;padding-left:20px;padding-right:20px;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;overflow:hidden;">
                            <?php echo ($traincourse["overview"]); ?>
                        </span>
                    </a>
                    </span>
                </div>
            </div>

            <!-- 主页公开课结束 -->
            <!-- 案例 -->
            <div id="homeintroduce">
                <div class="homeintroduce-safe">
                    <span style="display:block;float:left;width:1000px;height:350px;margin-top:50px;">
                    <div class="homeintroduce-right">
                        <h2 style="color:#ff6949;font-size:16px;display:block;width:75%;height:20px;line-height:20px;float:left;margin:20px 0;font-weight:500;margin-bottom:10px;">阿米巴内训案例</h2>
                        <a href="<?php echo U('Lists/index',array('id'=>3));?>" style="color:#666;font-size:12px;display:block;width:20%;height:20px;line-height:20px;float:left;margin:20px 0;margin-bottom:10px;">更多>></a>
                        <ul style="width:100%;height:78%;float:left;">
                            <?php if(is_array($incourseleft)): $i = 0; $__LIST__ = $incourseleft;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?><li style="width:92%;height:20px;margin:10px 0;">
                                <a href="<?php echo U('Incourse/detail',array('id'=>3,'inid'=>$vv['id']));?>" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                <?php echo ($vv["title"]); ?>
                                </a>
                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                           <!--  <li style="width:100%;height:20px;margin:10px 0;">
                                <a href="#" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                阿米巴经营课程阿米巴经营课程阿米巴经营课程
                                </a>
                            </li>
                            <li style="width:100%;height:20px;margin:10px 0;">
                                <a href="#" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                阿米巴经营课程阿米巴经营课程阿米巴经营课程
                                </a>
                            </li> -->
                        </ul>
                    </div>
                    <div class="homeintroduce-center">
                        <div class="homeintroduce-top">
                            <?php if(is_array($incoursecentert)): $i = 0; $__LIST__ = $incoursecentert;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Incourse/detail',array('id'=>3,'inid'=>$vo['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                                    <div style="width:450px;height:125px;float:left;overflow:hidden;">
                                        <img src="/Public/Upload/<?php echo ($vo["icon"]); ?>" alt="" style="width:450px;height:125px;float:left;transition: all 0.6s;">
                                    </div>
                                    <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                        <span style="display:block;width:400px;height:40px;margin-left:25px;line-height:40px;font-size:16px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vo["title"]); ?></span>
                    </p>
                    </a><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
                <div class="homeintroduce-bott">
                    <?php if(is_array($incoursecenterd1)): $i = 0; $__LIST__ = $incoursecenterd1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vd1): $mod = ($i % 2 );++$i;?><div class="homeintroduce-bottl">
                            <a href="<?php echo U('Incourse/detail',array('id'=>3,'inid'=>$vd1['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                                <div style="width:215px;height:125px;float:left;overflow:hidden;">
                                    <img src="/Public/Upload/<?php echo ($vd1["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;transition: all 0.6s;">
                                </div>
                                <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                    <span style="display:block;width:187px;height:40px;margin-left:14px;line-height:40px;font-size:14px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vd1["title"]); ?></span>
                                </p>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    <?php if(is_array($incoursecenterd2)): $i = 0; $__LIST__ = $incoursecenterd2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vd2): $mod = ($i % 2 );++$i;?><div class="homeintroduce-bottr">
                            <a href="<?php echo U('Incourse/detail',array('id'=>3,'inid'=>$vd2['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                                <div style="width:215px;height:125px;float:left;overflow:hidden;">
                                    <img src="/Public/Upload/<?php echo ($vd2["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;transition: all 0.6s;">
                                </div>
                                <!-- <img src="/Public/Upload/<?php echo ($vd2["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;"> -->
                                <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                    <span style="display:block;width:187px;height:40px;margin-left:14px;line-height:40px;font-size:14px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vd2["title"]); ?></span>
                                </p>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
            <div class="homeintroduce-left">
                <p href="#" style="display:block;color:#fff;border-bottom: solid 1px #fff;padding-bottom:15px;margin-top:28px;margin-bottom:20px;font-size:30px;">阿米巴<br>内训案例</p>
                <?php if(is_array($incourseright)): $i = 0; $__LIST__ = $incourseright;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vr): $mod = ($i % 2 );++$i;?><a class="font-changecolor" href="<?php echo U('Incourse/detail',array('id'=>3,'inid'=>$vr['id']));?>" style="color:#205A56;margin-left:-6px;display:block;margin-bottom:10px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;font-size:14px;">【面授】<?php echo ($vr["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
                <!-- <a class="font-changecolor" href="#" style="color:#0994a1;margin-left:-6px;display:block;margin-bottom:10px;white-space:nowrap;font-size:14px;">【面授】阿米巴精英课程</a> -->
            </div>
            </span>
        </div>
        </div>
        <!-- 案例结束 -->
        <!-- 新闻 -->
        <div id="homeresearch">
            <div class="homeintroduce-safe">
                <span style="display:block;float:left;width:1000px;height:350px;margin-top:50px;">
                        <div class="homeresearch-left">
                            <p style="display:block;color:#fff;border-bottom: solid 1px #fff;padding-bottom:15px;margin-top:28px;margin-bottom:20px;font-size:30px;">阿米巴<br>新闻资讯</p>
                            <?php if(is_array($ambnewsleft)): $i = 0; $__LIST__ = $ambnewsleft;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vl): $mod = ($i % 2 );++$i;?><a class="font-changecolor" href="<?php echo U('Research/detail',array('id'=>4,'aid'=>$vl['id']));?>" style="color:#8D0840;margin-left:-6px;display:block;margin-bottom:10px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;font-size:14px;">【面授】<?php echo ($vl["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!-- <a class="font-changecolor" href="#" style="color:#8D0840;margin-left:-6px;display:block;margin-bottom:10px;white-space:nowrap;font-size:14px;">【面授】阿米巴精英课程</a> -->
                        </div>
                        <div class="homeintroduce-center">
                            <div class="homeresearch-top">
                               <?php if(is_array($ambnewscentert)): $i = 0; $__LIST__ = $ambnewscentert;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vt): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Research/detail',array('id'=>4,'aid'=>$vt['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                                    <div style="width:450px;height:125px;float:left;overflow:hidden;">
                                        <img src="/Public/Upload/<?php echo ($vt["icon"]); ?>" alt="" style="width:450px;height:125px;float:left;transition: all 0.6s;">
                                    </div>
                                    <!-- <img src="/Public/Upload/<?php echo ($vt["icon"]); ?>" alt="" style="width:450px;height:125px;float:left;"> -->
                                    <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                        <span style="display:block;width:400px;height:40px;margin-left:25px;line-height:40px;font-size:16px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vt["title"]); ?></span>
                </p>
                </a><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <div class="homeintroduce-bott">
                <?php if(is_array($ambnewscenterd1)): $i = 0; $__LIST__ = $ambnewscenterd1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="homeresearch-bottl">
                        <a href="<?php echo U('Research/detail',array('id'=>4,'aid'=>$vo['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                            <div style="width:215px;height:125px;float:left;overflow:hidden;">
                                <img src="/Public/Upload/<?php echo ($vo["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;transition: all 0.6s;">
                            </div>
                            <!-- <img src="/Public/Upload/<?php echo ($vo["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;"> -->
                            <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                <span style="display:block;width:187px;height:40px;margin-left:14px;line-height:40px;font-size:14px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vo["title"]); ?></span>
                            </p>
                        </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
                <?php if(is_array($ambnewscenterd2)): $i = 0; $__LIST__ = $ambnewscenterd2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="homeresearch-bottr">
                        <a href="<?php echo U('Research/detail',array('id'=>4,'aid'=>$vo['id']));?>" style="display:block;width:100%;height:100%;overflow:hidden;position:relative;">
                            <div style="width:215px;height:125px;float:left;overflow:hidden;">
                                <img src="/Public/Upload/<?php echo ($vo["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;transition: all 0.6s;">
                            </div>
                            <!-- <img src="/Public/Upload/<?php echo ($vo["icon"]); ?>" alt="" style="width:215px;height:125px;float:left;"> -->
                            <p class="positionflash" style="width:100%;height:100%;background:rgba(255,255,255,0.8);position:absolute;top:125px;">
                                <span style="display:block;width:187px;height:40px;margin-left:14px;line-height:40px;font-size:14px;color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo ($vo["title"]); ?></span>
                            </p>
                        </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
        <div class="homeresearch-right">
            <h2 style="color:#ff6949;font-size:16px;display:block;width:75%;height:20px;line-height:20px;float:left;margin:20px 0;font-weight:500;margin-bottom:10px;">阿米巴新闻资讯</h2>
            <a href="<?php echo U('Research/index',array('id'=>4));?>" style="color:#666;font-size:12px;display:block;width:20%;height:20px;line-height:20px;float:left;margin:20px 0;margin-bottom:10px;">更多>></a>
            <ul style="width:100%;height:78%;float:left;">
                <?php if(is_array($ambnewsright)): $i = 0; $__LIST__ = $ambnewsright;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vr): $mod = ($i % 2 );++$i;?><li style="width:92%;height:20px;margin:10px 0;">
                        <a href="<?php echo U('Research/detail',array('id'=>4,'aid'=>$vr['id']));?>" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                    <?php echo ($vr["title"]); ?>
                                    </a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                <!--  <li style="width:100%;height:20px;margin:10px 0;">
                                    <a href="#" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                    阿米巴经营课程阿米巴经营课程阿米巴经营课程
                                    </a>
                                </li>
                                <li style="width:100%;height:20px;margin:10px 0;">
                                    <a href="#" style="float:left;width:100%;height:100%;display:block;overflow:hidden;font-size:14px;color:#888;text-overflow:ellipsis;white-space:nowrap;">
                                    阿米巴经营课程阿米巴经营课程阿米巴经营课程
                                    </a>
                                </li> -->
            </ul>
        </div>
        </span>
        </div>
        </div>
        <!-- 新闻结束 -->
        </div>

    
    <!-- homepage结束 -->
    <!-- 按钮 -->
    <span class="telephone" style="display:block;width:170px;height:50px;margin-bottom:10px;position:fixed;top:350px;right:-120px;background:rgb(210,210,210);transition: all 0.5s ease 0s;">
        <img src="/Public/Home/imgs/telephone.png" alt="" style="width:36px;height:36px;margin:7px;cursor:pointer;float:left;">
        <span style="display:block;width:120px;float:left;height:50px;font-size:20px;color:#fff;line-height:50px;">021-0000000</span>
    </span>
    <span class="returntop" style="display:block;width:140px;height:50px;margin-bottom:10px;position:fixed;top:410px;right:-90px;background:rgb(210,210,210);transition: all 0.5s ease 0s;">
        <img src="/Public/Home/imgs/pull_up.png" alt="" style="width:36px;height:36px;margin:7px;cursor:pointer;float:left;">
    </span>
    <!-- 按钮结束 -->
    <!-- 页脚开始 -->
    <div class="feet">
        <div class="feet-safe">
            <ul>
                <li style="width:80px;">
                    <a class="feet-title" style="width:80px;" href="<?php echo U('Index/index');?>">首页</a>
                </li>
                <li>
                    <a class="feet-title" href="<?php echo U('Ambintroduce/index',array('id'=>1));?>">阿米巴介绍</a>
                    <a class="feet-content" href="<?php echo U('Ambintroduce/index',array('id'=>1));?>" style="margin-top:20px;">稻盛和夫</a>
                    <a class="feet-content" href="<?php echo U('Ambintroduce/index',array('id'=>1));?>">阿米巴经营理念</a>
                </li>
                <li>
                    <a class="feet-title" href="<?php echo U('Traincourse/index',array('id'=>2));?>">阿米巴课程</a>
                    <a class="feet-content" href="<?php echo U('Traincourse/index',array('id'=>2));?>" style="margin-top:20px;">课程简介</a>
                    <a class="feet-content" href="<?php echo U('Traincourse/index',array('id'=>2));?>#tec">讲师介绍</a>
                    <a class="feet-content" href="<?php echo U('Traincourse/index',array('id'=>2));?>#sup">课程报名</a>
                </li>
                <li>
                    <a class="feet-title" href="<?php echo U('Incourse/index',array('id'=>3));?>">阿米巴内训</a>
                    <a class="feet-content" href="<?php echo U('Traincourse/index',array('id'=>2));?>" style="margin-top:20px;">内训流程简介</a>
                    <a class="feet-content" href="<?php echo U('Traincourse/index',array('id'=>2));?>">往期案例</a>
                </li>
                <li>
                    <a class="feet-title" href="<?php echo U('Research/index',array('id'=>4));?>">阿米巴研究</a>
                    <a class="feet-content" href="<?php echo U('Research/index',array('id'=>4));?>" style="margin-top:20px;">新闻咨询</a>
                    <!-- <a class="feet-content" href="<?php echo U('Research/index',array('id'=>4));?>">阿米巴研究文章</a> -->
                </li>
                <li style="border:0;">
                    <a class="feet-title" href="<?php echo U('Lists/aboutus');?>">关于我们</a>
                    <a class="feet-content" href="<?php echo U('Lists/aboutus');?>" style="margin-top:20px;">公司简介</a>
                    <a class="feet-content" href="<?php echo U('Lists/aboutus');?>">网站简介</a>
                </li>
            </ul>
            <p style="font-size:12px;color:#626262;text-align:center;">© 2017 UCAI Inc. All Rights Reserved 京ICP备13004859号</p>
        </div>
    </div>
    <!-- 页脚结束 -->
</body>
<script>
    window.onload = function() {
        $(function() {
            var navList = $(".navlist")
            navList.mouseover(function() {
                // console.log($(this).index())
                $(this).css("border-color", "#20A0FF").siblings().css("border-color", "#fff")
            })
            navList.mouseout(function() {
                $(navList).css("border-color", "#fff")
            })
            navList.click(function() {
                // console.log(111)
                navList.css("color", "rgb(135, 140, 145)");
                $(this).css("color", "#20A0FF")
            })
        })
        $(function() {
            var banner = $("#banner ul li")
            banner.eq(0).show().siblings().hide();
            var _index = -1;
            var autoPlay = function() {
                _index++;
                if (_index < 4) {
                    banner.eq(_index).fadeIn(1000).siblings().fadeOut(1000);
                    if (_index == 3) {
                        _index = -1
                    }
                    setTimeout(function() {
                        $('#banner .arrow li').eq(_index).addClass('change').siblings().removeClass('change');
                    }, 300);
                }
            }
            var timer = setInterval(autoPlay, 3000);
            $('#banner .arrow li').mouseenter(function() {
                _index = $(this).index();
                banner.eq(_index).fadeIn().siblings().fadeOut();
                $('#banner .arrow li').eq(_index).addClass('change').siblings('li').removeClass('change');
            })
            $("#banner").onmouseover = function() {
                clearInterval(timer);
            }
            $("#banner").onmouseout = function() {
                timer = setInterval(autoPlay, 3000);
            }
        })
        $(function() {
            var pst = 0;
            $(".telephone").click(function() {
                if (pst == 0) {
                    $(".telephone").animate({
                        right: 0
                    }, 200)
                    return pst = 1;
                } else {
                    $(".telephone").animate({
                        right: '-120px',
                    }, 200)
                    return pst = 0;
                }
            })
            $(".returntop").click(function() {
                $("html,body").animate({
                    scrollTop: 0
                }, 500);
            })
        })
    }
</script>

</html>