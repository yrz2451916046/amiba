<?php
	namespace Admin\Controller;
	//use Think\Controller;
	
	class TraincourseController extends PublicController{
		
		
			/**
			*	目录类型显示
			*/
		public function index(){
		    //var_dump($_POST);
			$map['name'] = array("LIKE","%{$_GET['name']}%");
			$count = M('traincourse') -> where($map) -> count();
			$Page = new\Think\Page($count,5,$_GET);
			$show = $Page -> show();
			$traincourse = M('traincourse') -> where($map) ->  order("id DESC") -> limit($Page->firstRow.','.$Page ->listRows) -> select();
			
			$num = ($Page ->nowPage -1)*($Page->listRows)+1;
			
			// foreach($traincourse as &$d){
			// 	$data = $video -> field('title') -> find($d['vid']);
			// 	$d['title'] = $data['title'];
			// 	$d['time'] = date("H:i",$d['time']);
			// }
			
			$url = U("Traincourse/index");
			//dump($courses);
			$this -> assign("num",$num);
			$this -> assign("page",$show);
			//$this -> assign("time",$times);
			$this -> assign("url",$url);
			$this -> assign('traincourse',$traincourse);
			$this -> display();
		}
		    
		
		
		
      
		/**
	*	del() 删除视频
	*
	*/
	public function del(){
		$id = I('id');
		
		//dump($id);
		$traincourse = M("traincourse");
		$map['id'] = array('IN',$id);
		
		if($traincourse -> where($map) -> delete($id)){
			
			$this -> redirect("Traincourse/index");
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
			$_POST['icon'] = $this -> upload();
			$traincourse = D('traincourse');
			//var_dump($traincourse ->create());exit;
				if($traincourse ->create()){
					
					if($traincourse -> add()){
						$this -> redirect('Traincourse/index');
					}else{
						$this -> error('添加失败');
					}
				} else {
					$this->error($traincourse->getError());
				}
				
			}
			
			
			
			$this -> display();
			
		}
		
		
		
		
		//修改目录
		public function mod(){
			
			$traincourse = D('traincourse');
			
			if($_POST['sub']){
				if(!empty($_FILES['icon']) && $_FILES['icon']['error'] != 4) {
				$_POST['icon'] = $this->upload();
			    }
				if($traincourse -> create()){
					if($traincourse -> save()){
						$this -> redirect('Traincourse/index');
					}else{
						$this -> error('修改失败');
					}
				} else {
					$this->error($traincourse->getError());
				}
			}
			
			
			$id = $_GET['id'];
			$data = M('traincourse') -> find($id);
			// dump($data);
			// exit;
			//dump($data);
			$this -> assign('traincourse',$data);
			$this -> display();
			
		}


		//修改状态
		public function status(){
			
			$traincourse = M("traincourse");
			$id = $_GET['id'];
			$status = $_GET['status'];
			$map['id'] = $id;
			if($status == '1'){
				$data['status'] = '0';
				$traincourse -> where($map) -> save($data);
				$this -> redirect("Traincourse/index");
			}else{
				$data['status'] = '1';
				$traincourse -> where($map) -> save($data);
				$this -> redirect("Traincourse/index");
			}
			
		}	

		//图片的上传
	private function upload(){
		$adv = array("maxSize" => 100000000,
						"exts" 	  => array("jpg","jpeg","png","gif"),
						"rootPath" =>"./Public/Upload/"
						);
		$upload = new \Think\Upload($adv);
		$info = $upload -> uploadOne($_FILES['icon']);
		if($info){
			$filePath = $info['savepath'].$info['savename'];
			return  $filePath;
			// exit;
		}else{
			$this -> error($upload -> getError());
		}
	}	

		
	
	}
?>