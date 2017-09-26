<?php
	namespace Home\Controller;
	use Think\Controller;
	class IncourseController extends Controller{
		
		
		public function index(){
			
			
		//遍历栏目
		$category = M('category') -> where("status=1") ->field('id,name') -> select();
		$this -> assign('category',$category);
		//内训案例数据
		$incourse = M('incourse')->where('status=1')->field('id,title,abstract,icon,addtime')->select();
		$this->assign('incourse',$incourse);
			
		$this -> display();
		}
		
	}
?>