<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="/Public/Home/js/jquery-1.8.3.min.js"></script>
    <script src="/Public/Home/js/flux.min.js" type="text/javascript" charset="utf-8"></script>

    
    <script type="text/javascript" charset="utf-8">
        $(function() {
            if (!flux.browser.supportsTransitions)
                alert("Flux Slider requires a browser that supports CSS3 transitions");
            window.f = new flux.slider('#slider', {
                autoplay: false,
                pagination: false
            });
            // Setup a listener for user requested transitions
            $('div#transitions').bind('click', function(event) {
                event.preventDefault();
                // If this is a 3D transform and the browser doesn't support 3D then inform the user
                if ($(event.target).closest('ul').is('ul#trans3d') && !flux.browser.supports3d) {
                    alert("The '" + event.target.innerHTML + "' transition requires a browser that supports 3D transforms");
                    return;
                }
                window.f.next(event.target.href.split('#')[1]);
            });
        });
        // $(function() {
        //     window.myFlux = $('#slider').flux();
        // });
    </script>
    <style>
        .introduce {
            width: 100%;
            height: 400px;
            _background: rgb(230, 230, 230);
            margin-top: 140px;
        }
        
        .introduce-safe {
            width: 1000px;
            margin: 0 auto;
            height: 400px;
            _background: #fff;
            _background: linear-gradient(to bottom right, #ECDE1D, #F8F549);
            overflow: hidden;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
            position: relative;
        }
        
        .introduce-show {
            width: 100%;
            height: 100%;
            position: relative;
            top: 0;
            left: 0;
        }
        
        .introduce-show>li {
            width: 1000px;
            height: 100%;
            float: left;
        }
        
        #transitions {
            position: absolute;
            bottom: 0;
            right: 0;
            z-index: 102;
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
    
    <div class="introduce">
        <!-- <p>This is Introduce page!</p> -->
        <div class="introduce-safe" id="slidercontainer">
            <ul class="introduce-show" id="slider">
                <img src="/Public/Upload/2017-09-22/daosheng1.png" alt="" style="width:1000px;height:400px;">
                <img src="/Public/Upload/2017-09-22/amibajingying.png" alt="" style="width:1000px;height:400px;">
                <div id="transitions">
                    <ul id="trans2D">
                        <li style="background:rgba(0,0,0,0.3);">
                            <a href="#blinds" style="display:block;width:50px;height:50px;background:url(/Public/Home/imgs/normal_left.png);">
                                <!-- <img src="/Public/Home/imgs/normal_right.png" alt="" style="width:50px;height:50px;margin:175px auto;cursor:pointer;background:rgba(0,0,0,0.7);"> -->
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- <li>
                    <div style="float:left;width:250px;height:340px;margin:30px;border-right:1px dashed #333;">
                        <div style="width:220px;height:220px;border-radius:50%;overflow:hidden;margin:45px 0;">
                            <img src="/Public/Upload/2017-09-22/hofu1.jpg" alt="" style="width:230px;height:280px;margin-left:-5px;">
                        </div>
                    </div>
                    <span style="float:left;width:640px;font-size:16px;color:#666;line-height:24px;">
                        <h1 style="height:80px;line-height:80px;text-align:center;color:#333;font-size:34px;font-weight:400;margin-top:20px;">稻盛和夫
                          <span style="font-size:20px;">（世界著名实业家、哲学家）</span>
                    </h1>
                    <p style="text-indent:32px;text-align:justify;color:#333;">稻盛和夫，1932年出生于日本鹿儿岛，鹿儿岛大学工学部毕业。27岁创办京都陶瓷株式会社（现名京瓷Kyocera），52岁创办第二电信（原名DDI，现名KDDI，目前在日本为仅次于NTT的第二大通讯公司），这两家公司又都在他的有生之年进入世界500强，两大事业皆以惊人的力道成长。 稻盛和夫的释义是涵盖了生活态度、哲学、思想、伦理观等因素人格。痛惜战后的日本以选择聪明才辩型的人做领导为潮流，忽略了道德规范和伦理标准，导致政界、商界丑闻频发。他建议领导者的选拔标准是德要高于才，也就是居人上者，人格第一，勇气第二，能力第三。他指出热爱是点燃工作激情的火把。无论什么工作，只要全力以赴去做就能产生很大的成就感和自信心，而且会产生向下一个目标挑战的积极性。成功的人往往都是那些沉醉于所做事的人。</p>
                    </span>
                </li>
                <li>
                    <div style="float:left;width:250px;height:340px;margin:30px;border-right:1px dashed #333;">
                        <div style="width:220px;height:220px;border-radius:50%;overflow:hidden;margin:45px 0;">
                            <img src="/Public/Home/imgs/amiba-book.jpg" alt="" style="width:230px;height:280px;margin-left:-5px;">
                        </div>
                    </div>
                    <span style="float:left;width:640px;font-size:16px;color:#666;line-height:24px;">
                        <h1 style="height:80px;line-height:80px;text-align:center;color:#333;font-size:34px;font-weight:400;margin-top:20px;">阿米巴经营理念
                        </h1>
                        <p style="text-indent:32px;text-align:justify;color:#333;">日本的稻盛和夫先生之前和你一样也有这样的烦恼，但是稻老现在是两家世界五百强的创始人，被称为商界的经营之圣。这其中的缘由便是他创立了独有的“阿米巴经营手法”。  稻盛和夫早年创业时遭遇的困境，当时在日本京瓷公司，稻盛和夫事必躬亲，既负责研发生产，又负责产品营销。但当公司发展到100人以上时，稻盛和夫已经苦不堪言，他非常渴望有更多的管理者可以分担各重要部门责任。于是，在京瓷公司成立5年之后，为了保持公司的发展活力，稻盛和夫创立了阿米巴经营模式。他把公司细分成许多个“阿米巴”，各个阿米巴组织独立核算，独立经营，并从公司内部选拔阿米巴“巴长”，并给予授权，委以经营重任，从而培育出许多具有经营者意识的领导人，目的就是让人人都成经营者。</p>
                      </span>
                </li> -->
            </ul>
            <!-- <span id="trans2D" class="introducectrl-left" style="display:none;width:50px;height:400px;position:absolute;left:0;top:0;z-index:102;">

                    <img src="/Public/Home/imgs/normal_right.png" alt="" style="width:50px;height:50px;margin:175px auto;cursor:pointer;background:rgba(0,0,0,0.7);">

            </span>
            <span id="trans2D" class="introducectrl-right" style="display:none;width:50px;height:400px;position:absolute;left:950px;top:0;z-index:102;">

                    <img src="/Public/Home/imgs/normal_left.png" alt="" style="width:50px;height:50px;margin:175px auto;cursor:pointer;background:rgba(0,0,0,0.7);">

            </span> -->
        </div>
    </div>

    <script>
        $(function() {
            $(".introduce-safe").mouseover(function() {
                $(".introducectrl-left").fadeIn();
                $(".introducectrl-right").fadeIn();
            })
            $(".introduce-safe").mouseleave(function() {
                    $(".introducectrl-left").fadeOut();
                    $(".introducectrl-right").fadeOut();
                })
                // console.log($showleft)
                // $(".introducectrl-right img").click(function() {
                //     var $showleft = $(".introduce-show").css("left")
                //     if ($showleft == "0px") {
                //         // alert(111)
                //         $(".introduce-show").animate({
                //             "left": "-1000px"
                //         }, 500)
                //     }
                // })
                // $(".introducectrl-left img").click(function() {
                //     $showleft = $(".introduce-show").css("left")
                //         // alert($showleft)
                //     if ($showleft == "-1000px") {
                //         $(".introduce-show").animate({
                //             "left": "0px"
                //         }, 500)
                //     }
                // })
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