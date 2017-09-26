<?php
	namespace Home\Controller;
	use Think\Controller;
	class ResearchController extends Controller{
		public function index(){
			
			//查找视频 ，讲师 ，
			
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			//内训案例数据
			$incourse = M('incourse')->where('status=1')->field('id,title,icon,abstract')->limit(6)->select();
			$this->assign('incourse',$incourse);
			
			
			$this -> display();
			
			
		}
		
		
		
		
	}
?>