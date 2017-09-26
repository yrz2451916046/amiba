<?php
	namespace Home\Controller;
	use Think\Controller;
	class ListsController extends Controller{
		public function index()
		{
			$id = $_GET['id'];
			if($id == 1) {
				$this->redirect('Ambintroduce/index',array('id'=>$id));
			}
			if($id == 2) {
				$this->redirect('Traincourse/index',array('id'=>$id));
			}
			if($id == 3) {
				$this->redirect('Incourse/index',array('id'=>$id));
			}
			if($id == 4) {
				$this->redirect('Research/index',array('id'=>$id));
			}
			$this -> display();
		}


		public function aboutus()
		{
			$gysign = '1';
			$this->assign('gysign',$gysign);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			$this->display();
		}
		
		
	}
?>