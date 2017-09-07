<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;

class CategoryController extends Controller
{
	private $obj;
	public function _initialize(){
		$this->obj = model('Category');
	}

	public function index(){
		$pid = input('pid',0,'intval');

		$list = $this->obj->getFirstCategory($pid);
		return $this->fetch('',[
				'list' => $list,
			]);
	}
	
	public function add(){		
		$list = $this->obj->getNormalFirstCategory();
		$this->assign('list',$list);
		return $this->fetch('');
	}
	
	public function edit($id=0){
		if (intval($id) < 1) {
			return $this->error();
		}

		$category = $this->obj->get($id);
		$categorys = $this->obj->getNormalFirstCategory();
		$this->assign('categorys',$categorys);
		return $this->fetch('',['category'=>$category]);
	}

	public function save(Request $request){
		if (!$request->isPost()) {
			$this->error('请求失败');
		}
		$data = $request->param();
		$validate = validate('Category');
		if (!$validate->scene('add')->check($data)) {
			$this->error($validate->getError());
		}
		if (!empty($data['id'])) {
			return $this->update($data);
		}
		//把$data提交Model层
		$result = $this->obj->add($data);
		if ($result) {
			$this->success('添加成功');
		}else{
			$this->error('添加失败');
		}
		// $category = new \app\common\model\Category;
		// $category->add($data);
	}
	public function update($data){
		$res = $this->obj->save($data,['id'=>intval($data['id'])]);
		if ($res) {
			$this->success('更新成功');
		}else{
			$this->error('更新失败');
		}
	}
	//排序
	public function listorder(Request $request){
		$result = $this->obj->save(['listorder'=>$request->param('listorder')],['id'=>$request->param('id')]);
		if ($result) {
			$this->result($_SERVER['HTTP_REFERER'],1,'成功');
		}else{
			$this->result($_SERVER['HTTP_REFERER'],0,'失败');
		}
	}

	//修改状态
	public function status(Request $request){
		$data = $request->param();
		$validate = validate('Category');
		if (!$validate->scene('status')->check($data)) {
			$this->error($validate->getError());
		}
		$result = $this->obj->save(['status'=>$data['status']],['id'=>$data['id']]);
		if ($result) {
			return $this->result($_SERVER['HTTP_REFERER'],1,'成功');
		}else{
			$this->result($_SERVER['HTTP_REFERER'],0,'失败');
		}
	}
}