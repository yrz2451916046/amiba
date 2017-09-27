<extend name="Index/index" />
<block name="headlist">
    <style>
        .research {
            width: 100%;
            margin-top: 140px;
            _margin-bottom: 40px;
            _height: 930px;
            _background: rgb(230, 230, 230);
        }
        
        .research-safe {
            width: 1000px;
            margin: 0 auto;
            _height: 840px;
            _background: #fff;
            margin-top: 40px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
            _box-shadow: 10px 10px 5px #888888;
        }
        
        .news>a {
            display: block;
            float: left;
            width: 300px;
            height: 340px;
            background: #fff;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
            border: 1px solid #999;
            margin-top: 30px!important;
            margin: 0 15.66px;
        }
        
        .news>a:hover {
            display: block;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.5s;
        }
        
        .news>a>h2 {
            display: block;
            color: #333;
            font-size: 18px;
            height: 32px;
            line-height: 32px;
            _text-align: center;
            padding: 2px;
            padding-left: 10px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-weight: 400;
            margin-top: 5px;
            width: 80%;
        }
        
        .news>a>p {
            display: block;
            color: #666;
            font-size: 14px;
            width: 280px;
            margin: 0 auto;
            height: 80px;
            line-height: 26px;
            text-align: justify;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
            text-indent: 28px;
        }
        
        .research-safe-high {
            float: left;
            background: #fff;
            height: 838px;
            overflow: hidden;
            position: relative;
        }
        
        .research-img:hover {
            transform: scale(1.1);
        }
    </style>
</block>
<block name="main">
    <div class="research">
        <!-- <p>This is Research page!</p> -->
        <div class="research-safe">
            <div class="research-safe-high">
                <span style="width:100%;height:34px;background:#F2C80F;font-size:16px;float:left;line-height:34px;">
                    <!-- <i style="display:block;width:6px;height:34px;background:#B6940C;float:left;"></i> -->
                    <p style="margin-left:10px;color:#fff;float:left;">新闻资讯&nbsp;/&nbsp;News</p>
                </span>
                <!-- <div style="width:100%;height:200px;background:#F2C80F;font-size:16px;overflow:hidden;position:relative;">
                    <i style="width:400px;height:5px;background:rgba(255,255,255, 0.3);transform:rotate(135deg);-webkit-transform:rotate(135deg);position:absolute;top:70px;left:-200px;z-index:2;"></i>
                    <span style="display:block;width:300px;height:80px;float:left;margin:20px 350px;margin-bottom:0;line-height:80px;color:#fff;font-weight:400;font-size:50px;text-align:center;">
                        新闻资讯
                    </span>
                    <span style="display:block;width:300px;height:50px;float:left;margin-left:350px;line-height:50px;color:#fff;font-weight:400;font-size:35px;text-align:center;">
                        News information
                    </span>
                    <i style="display:block;width:900px;height:3px;background:#fff;float:left;margin-top:15px;margin-left:50px;"></i>
                    <i style="display:block;width:800px;height:1px;background:#fff;float:left;margin-top:15px;margin-left:100px;"></i>
                </div> -->
                <ul class="news" style="background:#fff;">
                    <volist name="ambnews" id="vo">
                        <a href="{:U('Research/detail',array('id'=>$id,'aid'=>$vo['id']))}" class="newslist">
                            <div style="width:300px;height:200px;overflow:hidden;">
                                <img src="__PUBLIC__/Upload/{$vo.icon}" alt="" style="width:300px;height:200px;transition: all 0.6s;" class="research-img">
                            </div>
                            <h2>{$vo.title}</h2>
                            <p>{$vo.abstract}</p>
                        </a>
                    </volist>
                </ul>
                <p style="position:absolute;left:0;bottom:0;width:100%;margin-top:20px;font-size:16px;color:#fff;background:#F2C80F;line-height:40px;height:40px;text-align:center;float:left;">
                    <b class="append-button" style="cursor:pointer;font-weight:400;">查看更多>></b>
                </p>
            </div>
        </div>
    </div>
    <script>
        $(function() {
            var windex = $(".newslist").length
            var colHeight = Math.ceil(windex / 3)
                // console.log(colHeight)
                // console.log(windex)
            $(".append-button").click(function() {
                var researchHeight = $(".research-safe-high").height();
                // console.log(researchHeight)
                var i = 372;
                $(".research-safe-high").css({
                    "max-height": colHeight * 372 + 94,
                    "height": researchHeight + i
                })
                var researchSafe = $(".research-safe-high").css("max-height");
                var researchnowHeight = $(".research-safe-high").css("height");
                // console.log(researchSafe)
                if (researchSafe == researchnowHeight) {
                    $(".append-button").text("已经没有更多了~")
                }
            })
        })
    </script>
</block>