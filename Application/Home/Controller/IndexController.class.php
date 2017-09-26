<?php
	namespace Home\Controller;
	use Think\Controller;
	header("content-type:text/html;charset=utf-8");
	class IndexController extends Controller {
		public function index(){
		
		//网站配置
		// $config = M('config');
		// $configs = $config ->field("title,keywords,description,copyright,logo,status") ->find();
		
		
		//网站是否关闭
		// if($configs['status'] == 0){
		// 	$this->redirect("Index/shutdown");
		// }
		
		$sign = '1';
		$this->assign('sysign',$sign);
		//遍历栏目
		$category = M('category') -> where("status=1") ->field('id,name') -> select();
		$this -> assign('category',$category);
        //轮播图
        $carousel = M('carousel')->where('status=1')->field('id,icon,url')->order('addtime DESC')->limit(4)->select();
        //var_dump($carousel);exit;
        $this->assign('carousel',$carousel);
		
		//阿米巴课程简介
		$traincourse = M('traincourse')->where('status=1')->order('addtime DESC')->field('id,name,overview,icon')->find();
			//$list['info_detail_content'] = htmlspecialchars_decode($list['info_detail_content']);
			 $traincourse['overview'] = htmlspecialchars_decode( $traincourse['overview']);
			 //var_dump($traincourse);exit;
		//$traincourse['overview'] = htmlspecialchars($traincourse['overview']);
		//$traincourse['voerview'] = htmlspecialchars($traincourse['voerview']);
		 $this->assign('traincourse',$traincourse);

		//阿米巴内训案例
		$incourseleft = M('incourse')->where('status=1')->field('id,title,icon')->order('addtime DESC')->limit(3,3)->select();
		//var_dump($incourseleft);exit;
		$this->assign('incourseleft',$incourseleft);
		$incoursecentert = M('incourse')->where('status=1')->field('id,title,icon')->order('addtime DESC')->limit(0,1)->select();
		$this->assign('incoursecentert',$incoursecentert);
		$incoursecenterd1 = M('incourse')->where('status=1')->field('id,title,icon')->order('addtime DESC')->limit(1,1)->select();
		//var_dump($incoursecenterd1);exit;
		$this->assign('incoursecenterd1',$incoursecenterd1);
		$incoursecenterd2 = M('incourse')->where('status=1')->field('id,title,icon')->order('addtime DESC')->limit(2,1)->select();
		$this->assign('incoursecenterd2',$incoursecenterd2);
		$incourseright = M('incourse')->where('status=1')->field('id,title,icon')->order('addtime DESC')->limit(6,2)->select();
		$this->assign('incourseright',$incourseright);


		//新闻资讯
		$ambnewsleft = M('ambnews')->where('status=1')->field('id,icon,title')->order('addtime DESC')->limit(0,2)->select();
		$this->assign('ambnewsleft',$ambnewsleft);
		$ambnewscentert = M('ambnews')->where('status=1')->field('id,icon,title')->order('addtime DESC')->limit(2,1)->select();
		$this->assign('ambnewscentert',$ambnewscentert);
		$ambnewscenterd1 = M('ambnews')->where('status=1')->field('id,icon,title')->order('addtime DESC')->limit(3,1)->select();
		$this->assign('ambnewscenterd1',$ambnewscenterd1);
		$ambnewscenterd2 = M('ambnews')->where('status=1')->field('id,icon,title')->order('addtime DESC')->limit(4,1)->select();
		$this->assign('ambnewscenterd2',$ambnewscenterd2);
		$ambnewsright = M('ambnews')->where('status=1')->field('id,icon,title')->order('addtime DESC')->limit(5,3)->select();
		$this->assign('ambnewsright',$ambnewsright);

		
		
		
		
		
	//遍历新闻
	
		$news  = M("news");
		$data = $news -> limit("0,4") -> select();
		$this -> assign("news",$data);
		
		$this -> display();
	}
	//网站的关闭与开启
	// public function shutdown(){
	// 	$this -> display();
	// }
	
	// public function logout(){
	// 	$_SESSION['username']=null;
	// 	$_SESSION['id']=null;
	// 	$this->redirect("Login/loginout");
		
	// }

	// 登录验证  默认开启session
	// public function login(){
		
	// 	$user = M("user");
	// 	$userdetail = M("userdetail");
	// 	$d['email'] = $_POST['username'];
	// 	$d1['pwd'] = md5($_POST['password']);
		
	// 	$data = $user->where($d)->find();
	// 	if($data['status'] && $d1['pwd'] == $data['pwd']){
	// 		$data1 = $userdetail->field("username")->find($data['id']);
	// 		if($data1['username']){
	// 			$_SESSION['username']=$data1['username'];
	// 			$_SESSION['pic']=$data['pic'];
	// 			$_SESSION['id']=$data['id'];
	// 		}else{
	// 			$_SESSION['username']=$data['email'];
	// 			$_SESSION['pic']=$data['pic'];
	// 			$_SESSION['id']=$data['id'];
	// 		}
	// 		$this->redirect("Index/index");
	// 	}else{
	// 		$this->error("用户名或密码错误");
	// 	}
	// }
	
	
	// 查找模板的子类
	// public function se(){
	// 	$type = M("type");
	// 	$d['pid'] = $_POST['pid'];
	// 	$data = $type -> where($d) -> select();
	// 	//dump($data);
	// 	echo json_encode($data);
	// }
	
}