<?php
	namespace Admin\Model;

	use Think\Model;

    date_default_timezone_set('PRC');
    class CarouselModel extends Model{
        //protected $tablePrefix = 'vr';
        //protected $tableName = 'lbl_info_detail';
        
        protected $_auto = array(
            array('addtime','time',3,'function'),
            //array('info_detail_content','stripslashes',3,'function'),//输出时要用处理
        );
        protected $_validate = array (
            array('title','require','轮播图标题不能为空'),
            array('url','require','链接地址不能为空'),

        );
        //将时间转换成字符串
        // public function timeToString(){
        //     return strval(time());
        // }
    }