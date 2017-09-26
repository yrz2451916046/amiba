<?php
	namespace Home\Controller;
	use Think\Controller;
	class TraincourseController extends Controller{
		public function index(){
			$id = $_GET['id'];	
			$this->assign('id',$id);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			//阿米巴课程数据
			$traincourse = M('traincourse')->where('status=1')->field('id,name,starttime,address,area,goout,consult,language,icon,overview,lecintroduce,discount,outline')->order('addtime DESC')->limit(1)->select();
			$traincourse[0]['overview'] = htmlspecialchars_decode($traincourse[0]['overview']);
			$traincourse[0]['lecintroduce'] = htmlspecialchars_decode($traincourse[0]['lecintroduce']);
			$traincourse[0]['discount'] = htmlspecialchars_decode($traincourse[0]['discount']);
			$traincourse[0]['outline'] = htmlspecialchars_decode($traincourse[0]['outline']);
			//echo M('traincourse')->getLastSql();exit;
			//var_dump($traincourse);exit;
			$this->assign('traincourse',$traincourse);
			$this -> display();
			
			
		}
		
		
		
	}
?>