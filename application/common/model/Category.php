<?php
namespace app\common\model;
use think\Model;

/**
* 
*/
class Category extends Model
{
	public function add($data){
		$data['status'] = 1;
		return $this->save($data);
	}

	public function showAll(){
		// return Category::all();
		return $this->all();
	}

	public function getNormalFirstCategory($pid = 0){
		$data = [
			'status' => 1,
			'parent_id' => $pid,
		];
		$oredr = [
			'id' => 'desc',
		];
		return $this->where($data)
			->order($oredr)
			->select();
	}

	public function getFirstCategory($pid = 0){
		$data = [
			'status' => ['neq',-1],
			'parent_id' => $pid,
		];
		$oredr = [
			'listorder' => 'des',
			'id' => 'desc',
		];
		$result = $this->where($data)
			->order($oredr)
			->paginate();
		// echo $this->getLastSql();
		return $result;
	}
}