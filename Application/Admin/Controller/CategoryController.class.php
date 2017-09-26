<?php
	namespace Admin\Controller;
	//use Think\Controller;
	
	class CategoryController extends PublicController{
		
		
			/**
			*	目录类型显示
			*/
		public function index(){
		
			$map['name'] = array("LIKE","%{$_GET['name']}%");
			$count = M('category') -> where($map) -> count();
			$Page = new\Think\Page($count,5,$_GET);
			$show = $Page -> show();
			$category = M('category') -> where($map) ->  order("id DESC") -> limit($Page->firstRow.','.$Page -> listRows) -> select();
			
			$num = ($Page -> nowPage -1)*($Page -> listRows)+1;
			
			// foreach($traincourse as &$d){
			// 	$data = $video -> field('title') -> find($d['vid']);
			// 	$d['title'] = $data['title'];
			// 	$d['time'] = date("H:i",$d['time']);
			// }
			
			$url = U("category/index");
			//dump($courses);
			$this -> assign("num",$num);
			$this -> assign("page",$show);
			//$this -> assign("time",$times);
			$this -> assign("url",$url);
			$this -> assign('category',$category);
			$this -> display();
		}
		    
		
		
		
      
		/**
	*	del() 删除视频
	*
	*/
	public function del(){
		$id = I('id');
		
		//dump($id);
		$category = M("category");
		$map['id'] = array('in',$id);
		
		if($category -> where($map) -> delete($id)){
			
			$this -> redirect("category/index");
		}else{
			
			$this -> error("删除失败");
		}
	}
		
		//添加课程
		public function add(){
			
			//var_dump($_POST);exit;
			if($_POST['sub']){
				
				   // dump($_POST);
			 // exit;
			$category = D('category');
				if($category ->create()){
					
					if($category -> add()){
						$this -> redirect('category/index');
					}else{
						$this -> error('添加失败');
					}
				} else {
					$this->error($category->geterror());
				}
				
			}
			
			$this -> display();
			
		}
		
		
		
		
		//修改目录
		public function mod(){
			
			$category = D('category');
			
			if($_POST['sub']){
				if($category -> create()){
					if($category -> save()){
						$this -> redirect('category/index');
					}else{
						$this -> error('修改失败');
					}
				} else {
					$this->error($category->geterror());
				}
			}
			
			
			$id = $_GET['id'];
			$data = M('category') -> find($id);
			// dump($data);
			// exit;
			//dump($data);
			$this -> assign('category',$data);
			$this -> display();
			
		}


		//修改状态
		public function status(){
			
			$category = M("category");
			$id = $_GET['id'];
			$status = $_GET['status'];
			$map['id'] = $id;
			if($status == '1'){
				$data['status'] = '0';
				$category -> where($map) -> save($data);
				$this -> redirect("category/index");
			}else{
				$data['status'] = '1';
				$category -> where($map) -> save($data);
				$this -> redirect("category/index");
			}
			
		}		

		
	
	}
?>