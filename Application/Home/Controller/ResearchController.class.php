<?php
	namespace Home\Controller;
	use Think\Controller;
	class ResearchController extends Controller{
		public function index(){
			
			$id = $_GET['id'];	
			$this->assign('id',$id);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			//内训案例数据
			$ambnews = M('ambnews')->where('status=1')->field('id,title,icon,abstract')->select();
			$this->assign('ambnews',$ambnews);
			
			
			$this -> display();
			
			
		}

		public function detail()
		{
			$id = $_GET['id'];
			$aid['id'] = $_GET['aid'];
			$this->assign('id',$id);
			//遍历栏目
			$category = M('category') -> where("status=1") ->field('id,name') -> select();
			$this -> assign('category',$category);
			//新闻数据
			$data = M('ambnews')->where($aid)->field('title,username,abstract,content,addtime')->find();
			$data['content'] = htmlspecialchars_decode($data['content']);
			$this->assign('data',$data);
			$this->display();
		}

		public function getdata()
		{
			$count = M('ambnews')->where('status=1')->count();
			$page = new \Think\Page($count,6);
			$ambnews = M('ambnews')->where('status=1')->field('id,title,icon,abstract')->limit($page->firstRow.','.$page->listRows)->select();
			$pagenum = ceil($page->totalRows / $page->listRows);
			$list['count'] = 6;
			$list['pagenum'] = $pagenum;
			var_dump($list);exit;
			$this->ajaxReturn($list);
			
		}
		
		
		
		
	}
?>