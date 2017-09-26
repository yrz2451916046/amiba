<?php
	namespace Admin\Model;

	use Think\Model;

    date_default_timezone_set('PRC');
    class LecturerModel extends Model{
        //protected $tablePrefix = 'vr';
        //protected $tableName = 'lbl_info_detail';
        
        protected $_auto = array(
            array('addtime','time',3,'function'),
            //array('info_detail_content','stripslashes',3,'function'),//输出时要用处理
        );
        protected $_validate = array (
            array('name','require','讲师名称不能为空'),
            array('introduce','require','讲师介绍不能为空'),

        );
        //将时间转换成字符串
        // public function timeToString(){
        //     return strval(time());
        // }
    }