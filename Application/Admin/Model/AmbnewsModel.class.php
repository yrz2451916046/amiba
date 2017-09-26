<?php
	namespace Admin\Model;

	use Think\Model;
   
    class AmbnewsModel extends Model{
        //protected $tablePrefix = 'vr';
        //protected $tableName = 'lbl_info_detail';
        
        protected $_auto = array(
            array('addtime','time',3,'function'),
            //array('info_detail_content','stripslashes',3,'function'),//输出时要用处理
        );
        protected $_validate = array (
            array('title','require','新闻标题不能为空'),
            array('username','require','发布者不能为空'),
            array('abstract','require','新闻摘要不能为空'),
            array('content','require','新闻内容不能为空'),
            

        );
        //将时间转换成字符串
        // public function timeToString(){
        //     return strval(time());
        // }
    }