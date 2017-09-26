<?php
	namespace Home\Controller;
	use Think\Controller;
	class IncourseController extends Controller{
		
		
		public function index(){
			
			$id = $_GET['id'];	
			$this->assign('id',$id);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			//内训案例数据
			$incourse = M('incourse')->where('status=1')->field('id,title,abstract,icon,addtime')->limit(0,2)->select();
			$this->assign('incourse',$incourse);
			$incoursed = M('incourse')->where('status=1')->field('id,title,abstract,icon,addtime')->limit(2,1)->select();
			$this->assign('incoursed',$incoursed);
			$this -> display();
		}

		public function detail()
		{
			$id = $_GET['id'];
			$inid['id'] = $_GET['inid'];
			$this->assign('id',$id);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			$incourse = M('incourse')->where($inid)->where('status=1')->field('id,title,abstract,content,addtime')->find();
			$incourse['content'] = htmlspecialchars_decode($incourse['content']);
			$this->assign('incourse',$incourse);
			$this->display();
		}
		
	}
?>