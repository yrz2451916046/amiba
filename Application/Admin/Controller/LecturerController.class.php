<?php
	namespace Admin\Controller;
	//use Think\Controller;
	
	class LecturerController extends PublicController{
		
		
			/**
			*	目录类型显示
			*/
		public function index(){
		
			$map['name'] = array("LIKE","%{$_GET['name']}%");
			$count = M('lecturer') -> where($map) -> count();
			$Page = new\Think\Page($count,5,$_GET);
			$show = $Page -> show();
			$lecturer = M('lecturer') -> where($map) ->  order("id DESC") -> limit($Page->firstRow.','.$Page -> listRows) -> select();
			
			$num = ($Page -> nowPage -1)*($Page -> listRows)+1;
			
			// foreach($traincourse as &$d){
			// 	$data = $video -> field('title') -> find($d['vid']);
			// 	$d['title'] = $data['title'];
			// 	$d['time'] = date("H:i",$d['time']);
			// }
			
			$url = U("Lecturer/index");
			//dump($courses);
			$this -> assign("num",$num);
			$this -> assign("page",$show);
			//$this -> assign("time",$times);
			$this -> assign("url",$url);
			$this -> assign('lecturer',$lecturer);
			$this -> display();
		}
		    
		
		
		
      
		/**
	*	del() 删除视频
	*
	*/
	public function del(){
		$id = I('id');
		
		//dump($id);
		$lecturer = M("lecturer");
		$map['id'] = array('in',$id);
		
		if($lecturer -> where($map) -> delete($id)){
			
			$this -> redirect("Lecturer/index");
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
			$lecturer = D('lecturer');
				if($lecturer ->create()){
					
					if($lecturer -> add()){
						$this -> redirect('Lecturer/index');
					}else{
						$this -> error('添加失败');
					}
				} else {
					$this->error($lecturer->geterror());
				}
				
			}
			
			$this -> display();
			
		}
		
		
		
		
		//修改目录
		public function mod(){
			
			$lecturer = D('lecturer');
			
			if($_POST['sub']){
				if($lecturer -> create()){
					if($lecturer -> save()){
						$this -> redirect('lecturer/index');
					}else{
						$this -> error('修改失败');
					}
				} else {
					$this->error($lecturer->geterror());
				}
			}
			
			
			$id = $_GET['id'];
			$data = M('lecturer') -> find($id);
			// dump($data);
			// exit;
			//dump($data);
			$this -> assign('lecturer',$data);
			$this -> display();
			
		}


		//修改状态
		public function status(){
			
			$lecturer = M("lecturer");
			$id = $_GET['id'];
			$status = $_GET['status'];
			$map['id'] = $id;
			if($status == '1'){
				$data['status'] = '0';
				$lecturer -> where($map) -> save($data);
				$this -> redirect("Lecturer/index");
			}else{
				$data['status'] = '1';
				$lecturer -> where($map) -> save($data);
				$this -> redirect("Lecturer/index");
			}
			
		}		

		
	
	}
?>