<?php
	namespace Admin\Controller;
	
	class AdminController extends PublicController{

	   
	   //遍历管理员
		public function index(){
			
			$admin = M('admin');
			
			$group = M('auth_group');
			$access = M('auth_group_access');
			
			//搜索分页
			 $map1['name'] = array("LIKE","%{$_GET['name']}%");
			 $count = $admin -> where($map1) -> count();
			 $Page = new \Think\Page($count,4,$_GET);
			 $show = $Page -> show();
			$admins = $admin -> where($map1)->order("id DESC") -> limit($Page ->firstRow.',',$Page -> listRows) -> select();
			 
			 //查出管理组名字
			 foreach($admins as &$a){
				$group_access = $access ->field("group_id") ->where("uid='{$a['id']}'")-> find();
				$a['group_id'] = $group_access['group_id'];
				$groups = $group -> field("title") -> where("id='{$a['group_id']}'") -> find();
				$a['title'] = $groups['title'];
			 }
			// dump($admins);
			  
			$this -> assign('admins',$admins);
			$this -> assign('page',$show);
			$this -> display();
		}   
		
		//添加管理员组
		public function add(){
			
			$group = M('auth_group');
			$admin = M('admin');
			$group_access = M('auth_group_access');
			
			if($_POST['sub']){
			    $_POST['photo'] = $this -> upload();
				$_POST['pwd'] = md5($_POST['pwd']);
				  
			    if($admin -> create()){
				
				  
					if($uid = $admin ->add()){
					  
					 
					 
					 }else{
					   
					   $this -> error('添加失败');
					}
				 }
                    
				 $_POST['uid'] = $uid; //把管理员ID赋值
				 	 // dump($_POST);
					// dump($group_access ->create());
					 // dump($group_access ->add());
					  // EXIT;
					if($group_access -> create()){
					
						
						if($group_access ->add()){
							$this -> redirect('Admin/index');
						}else{
							$this -> error('添加失败');
						}
				 }
			 }
			
			$data = $group -> where("status = 1") ->select();
			$this -> assign('groups',$data);
			$this->display();
		}
		
		//修改管理员
		
		public function mod(){
			$group = M('auth_group');
			$admin = M('admin');
			$access = M('auth_group_access');
			if($_POST['sub']){
				
				$_POST['photo'] = $this -> upload();
				  // dump($_POST);
				  // exit;
				if($admin -> create()){
					
					if($admin -> save()){
						
					}else{
						$this -> error("修改失败");
					}
				}
				
				   //dump($_POST);
				  // dump($access ->create());
				 // dump($access ->save());
				 
				  // EXIT;
				if($access -> create()){
					
					if($access ->where("uid = {$_POST['id']}")-> save()){
						$this -> redirect('Admin/index');
					}else{
						$this -> error('修改失败');
					}
				}else{
					$this -> error('修改失败');
				}
				
			}
			//把默认值带过去
			$id = $_GET['id'];
			$admins = $admin -> find($id);
			  
			$groups = $group -> where("status = 1") ->select(); //查找出全部的规则 并且状态是开启的
			$this -> assign('admin',$admins);    
			$this -> assign('groups',$groups);
			$this -> display();
		
		}
		
		//删除规则
		
		public function del(){
		
			$id  = I('id');
			$admin = M('admin');
			$map['id'] = array("IN",$id);
			if($admin -> where($map) -> delete($id)){
				
				$this -> redirect("Admin/index");
				
			}else{
				$this -> error("删除失败");
			}
			
		}
		
		//修改状态
		public function status(){
			
		    $admin = M('admin');
			$id = $_GET['id'];
			$status = $_GET['status'];
			$map['id'] = $id;
			if($status){
				$map['status'] = 0;
				$admin -> save($map);
				$this -> redirect("Admin/index");
			}else{
				$map['status'] = 1;
				$admin -> save($map);
				$this -> redirect("Admin/index");
			}
		
		}
		
		
		//文件上传
	private function upload(){
		//dump($_FILES);
	
		$config = array("maxSize" => 1000000,
						"exts" 	  => array("jpg","jpeg","png","gif"),
						"rootPath" =>"./Public/Upload/"
						);
		$upload = new \Think\Upload($config);
		$info = $upload -> uploadOne($_FILES['photo']);
		
		if($info){
			
			$filePath = $info['savepath'].$info['savename'];
			return $filePath;
		}else{
			$this -> error($upload -> getError());
		}
	}
	}
?>