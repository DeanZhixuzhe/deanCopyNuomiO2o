<?php
namespace app\admin\validate;
use think\Validate;

/**
* 
*/
class Category extends Validate
{
	protected $rule = [
		['name','require|max:10','分类名称不能为空}|分类名称长度不能大于10'],
		['parent_id','number'],
		['id','number'],
		['status','number|in:-1,0,1','状态必须是数字|状态码不合法'],
		['listorder','number'],
	];

	protected $scene = [
		'add' => ['name','parent_id','id'],
		'listorder' => ['id','listorder'],
		'status' => ['id','status'],
	];
}