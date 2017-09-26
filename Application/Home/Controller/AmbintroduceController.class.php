<?php
	namespace Home\Controller;
	use Think\Controller;
	class AmbintroduceController extends Controller{
		public function index(){
		
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			$id = $_GET['id'];	
			$this->assign('id',$id);
			$this -> display();
			
			
		}
		
		
		
		
	}
?>