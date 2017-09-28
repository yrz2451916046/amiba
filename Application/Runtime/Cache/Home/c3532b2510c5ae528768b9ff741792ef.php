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
        }
        
        .xiangqing {
            width: 100%;
            background: rgb(230, 230, 230);
            margin-top: 140px;
        }
        
        .xiangqing-safe {
            width: 1000px;
            margin: 0 auto;
            background: #fff;
            padding-bottom: 20px;

        }
        
        .text {
            width: 90%;
            margin: 3%;
            margin: 0 auto;
        }
    </style>

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
    
    <div class="xiangqing">
        <div class="xiangqing-safe">
            <div class="text">
                <h1 style="height:80px;line-height:80px;font-size:16px;text-align:center;font-weight:blod;"><?php echo ($incourse["title"]); ?></h1>
                <div style="width:100%;height:40px;border-top:1px dashed #666;border-bottom:1px dashed #666;font-size:14px;">
                   <!--  <p style="float:left;color:#333;width:18%;height:40px;line-height:40px;text-align:left;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                        <b style="color:#20A0FF;">发布者：</b><?php echo ($data["username"]); ?>
                    </p> -->
                    <p style="float:left;color:#333;width:40%;height:40px;line-height:40px;text-align:center;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                        <b style="color:#20A0FF;">摘要：</b><?php echo ($incourse["abstract"]); ?>
                    </p>
                    <p style="width:18%;height:40px;line-height:40px;text-align:center;float:right;color:#333;">
                        <b style="color:#20A0FF;">发布时间：</b><?php echo (date("Y-m-d",$incourse["addtime"])); ?>
                    </p>
                </div>
                <span style="display:block;width:100%;font-size:14px;line-height:24px;color:#666;margin-top:20px;text-align:justify;">
                        <?php echo ($incourse["content"]); ?>
                </span>
                <!-- <p style="margin-top:20px;font-size:14px;color:#666;height:40px;">
                    <b style="color:#20A0FF;">来源：</b>澎湃新闻网
                </p> -->
            </div>
        </div>
    </div>
    <script>
        $(function() {
            var windowHeight = $(window).height();
            $(".xiangqing").css("min-height", (windowHeight - 300))
        })

    </script>

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