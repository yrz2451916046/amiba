<?php
	nameSpace Admin\Controller;
	//use Think\Controller;
	header("content-type:text/html;charset=utf-8");
	class AdviceController extends PublicController{
		public function index(){
			$advice=M("advice");
			$user=M("user");
			$map['title'] = array("LIKE","%{$_GET['title']}%");
			$count = $advice -> where($map)-> count();
			$Page = new\Think\Page($count,3);
			$show = $Page -> show();
			$data = $advice -> where($map) -> limit($Page -> firstRow.','.$Page -> listRows)->select();	
			$num = ($Page -> nowPage -1)*($Page ->listRows) +1;
			
			foreach($data as &$d ){
				$users=$user->field("email")->find($d['uid']);
				$d['email']=$users['email'];
				$d['time']=date("Y-m-d H:i:s",$d['time']);
			}
			$this -> assign("num",$num);
			$this -> assign("page",$show);
			$this->assign("datas",$data);
			$this->display();
		}
		public function del(){
			$advice=M("advice");
			
			$id=I("id");
			$map['id']=array("in",$id);
			if($advice->where($map)->delete($id)){
				$this->redirect("Advice/index");
			}else{
				$this->error("删除失败");
			}
		}
	}
?>