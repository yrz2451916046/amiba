<?php
	namespace Admin\Controller;
	//use Think\Controller;
	
	class AmbnewsController extends PublicController{
		
		
			/**
			*	目录类型显示
			*/
		public function index(){
		
			$map['title'] = array("LIKE","%{$_GET['title']}%");
			$count = M('ambnews') -> where($map) -> count();
			$Page = new\Think\Page($count,5,$_GET);
			$show = $Page -> show();
			$ambnews = M('ambnews') -> where($map) ->  order("id DESC") -> limit($Page->firstRow.','.$Page ->listRows) -> select();
			
			$num = ($Page ->nowPage -1)*($Page ->listRows)+1;
			
			// foreach($traincourse as &$d){
			// 	$data = $video -> field('title') -> find($d['vid']);
			// 	$d['title'] = $data['title'];
			// 	$d['time'] = date("H:i",$d['time']);
			// }
			
			$url = U("ambnews/index");
			//dump($courses);
			$this -> assign("num",$num);
			$this -> assign("page",$show);
			//$this -> assign("time",$times);
			$this -> assign("url",$url);
			$this -> assign('ambnews',$ambnews);
			$this -> display();
		}
		    
		
		
		
      
		/**
	*	del() 删除视频
	*
	*/
	public function del(){
		$id = I('id');
		
		//dump($id);
		$ambnews = M("ambnews");
		$map['id'] = array('in',$id);
		
		if($ambnews -> where($map) -> delete($id)){
			
			$this -> redirect("Ambnews/index");
		}else{
			
			$this -> error("删除失败");
		}
	}
		
		//添加课程
		public function add(){
			
			//var_dump($_POST);exit;
			if($_POST['sub']){
			
			$_POST['icon'] = $this -> upload();
				   // dump($_POST);
			 // exit;
			$ambnews = D('ambnews');
				if($ambnews ->create()){
					
					if($ambnews -> add()){
						$this -> redirect('ambnews/index');
					}else{
						$this -> error('添加失败');
					}
				} else {
					$this->error($ambnews->geterror());
				}
				
			}
			
			$this -> display();
			
		}
		
		
		
		
		//修改目录
		public function mod(){
			
			$ambnews = D('ambnews');
			
			if($_POST['sub']){
				if(!empty($_FILES['icon']) && $_FILES['icon']['error'] != 4) {
				$_POST['icon'] = $this->upload();
			    }
				if($ambnews -> create()){
					if($ambnews -> save()){
						$this -> redirect('ambnews/index');
					}else{
						$this -> error('修改失败');
					}
				} else {
					$this->error($ambnews->geterror());
				}
			}
			
			
			$id = $_GET['id'];
			$data = M('ambnews') -> find($id);
			// dump($data);
			// exit;
			//dump($data);
			$this -> assign('ambnews',$data);
			$this -> display();
			
		}


		//修改状态
		public function status(){
			
			$ambnews = M("ambnews");
			$id = $_GET['id'];
			$status = $_GET['status'];
			$map['id'] = $id;
			if($status == '1'){
				$data['status'] = '0';
				$ambnews -> where($map) -> save($data);
				$this -> redirect("ambnews/index");
			}else{
				$data['status'] = '1';
				$ambnews -> where($map) -> save($data);
				$this -> redirect("Ambnews/index");
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