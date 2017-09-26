<?php
	namespace Admin\Model;

	use Think\Model;

    date_default_timezone_set('PRC');
    class TraincourseModel extends Model{
        //protected $tablePrefix = 'vr';
        //protected $tableName = 'lbl_info_detail';
        
        protected $_auto = array(
            array('addtime','time',3,'function'),
            array('starttime','strtotime',3,'function'),
            //array('info_detail_content','stripslashes',3,'function'),//输出时要用处理
        );

        protected $_validate = array (
            array('name','require','课程标题不能为空'),
            array('starttime','require','开始时间不能为空'),
            array('address','require','地址不能为空'),
            array('goout','require','出行不能为空'),
            array('language','require','语言不能为空'),
            array('consult','require','咨询不能为空'),
            array('overview','require','概述不能为空'),
            array('registration','require','报名及咨询不能为空'),
            array('discount','require','费用及优惠不能为空'),
            array('outline','require','纲要不能为空'),

        );
       
       
    }