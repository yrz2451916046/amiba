<?php
	namespace Home\Controller;
	use Think\Controller;
	header("content-type:text/html;charset=utf-8");
	class DetailController extends Controller {
		public function index(){
			$detail = M("userdetail");			
			$user = M("user");
			
			//网站配置
			$config = M("config");
			$configs = $config -> find();
			
			if($detail->where("id={$_GET['id']}")->find()){
				$data['id']=$_GET['id'];
			}else{
				$detail->add($_GET);
				$data['id']=$_GET['id'];
			}
			
			$data1=$detail->where("id={$data['id']}")->find();
			$this -> assign("data",$data1);
			$this -> assign("configs",$configs);
			$this -> display();
		}
		public function mol(){	
			// 修改的时候才会调用此方法
			$detail = M("userdetail");			
			$user = M("user");
			// 修改信息然后更新数据库
			if($_POST['id']){
				$d2=$_POST['id'];
				$d['username']=$_POST['username'];
				$_SESSION['username']=$_POST['username'];
				$d['sex']=$_POST['sex'];
				$d['description']=$_POST['description'];
				$d['realname']=$_POST['realname'];
				$d['qq']=$_POST['qq'];
				$d['edu']=$_POST['edu'];
				$d['phone']=$_POST['phone'];
				$d['cardid']=$_POST['cardid'];
				$d['special']=$_POST['special'];
				$detail->where("id={$d2}")->save($d);
				
				
				// 判断是否上传文件
				if($_FILES['pic']['name']){
					$da['pic']=$this->upload();
					$user->where("id={$_POST['id']}")->save($da);
					$_SESSION['pic']=$da['pic'];
				}
			}
			$this->redirect("Detail/personal");
		}
		
		
		private function upload(){
			$config = array(
				"maxSize" => 10240000,	
				"exts" => array("jpg","jpeg","png","gif","bmp"),
				"rootPath" => "./Public/Upload/"
				);
			$upload = new \Think\Upload($config);
			$info = $upload -> uploadOne($_FILES['pic']);
			if($info){
				$data = $info['savepath'].$info['savename'];
				return $data;
			}else{
				$data = $info['savepath'].$info['savename'];
				return $data;
			}	
		}
		
		
		// 查看个人信息personal
		public function personal(){
			$detail = M("userdetail");
			
			//网站配置
			$config = M("config");
			$configs = $config -> find();
			
			if(!$_SESSION['id']){
				$this->redirect("index/index");
			}
			$id = $_SESSION['id'];
			$data = $detail -> find($id);
			$this -> assign("data",$data);
			$this -> assign("configs",$configs);
			$this -> display();
		}
		
		//个人中心personalcenter
		public function personalCenter(){
		
			$detail = M("userdetail");
			$user =M("user");
			
			//网站配置
			$config = M("config");
			$configs = $config -> find();
			
			$id = $_GET['id'];
			$data = $detail  -> find($id);
			$this -> assign("per",$data);
			
			$users = $user -> find($id);
			// dump($user);
			// exit;
			$this -> assign("users",$users);
			$this -> assign("configs",$configs);
			$this -> display();
			
			
			
		}
		
	
}