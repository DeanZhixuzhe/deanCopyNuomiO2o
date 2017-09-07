<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    // 生成应用公共文件
    '__file__' => ['common.php', 'config.php', 'database.php'],

    // 定义demo模块的自动生成 （按照实际定义的文件名生成）
    'common'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['UserController', 'UserTypeController'],
        'model'      => ['User', 'UserType'],
        'view'       => ['index/index'],
    ],
    'user'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['UserType'],
        'model'      => ['User', 'UserType'],
        'view'       => ['index/index'],
    ],
    'article'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Article'],
        'view'       => ['index/index'],
    ],
    'api'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        // 'model'      => ['Article'],
        'view'       => ['index/index'],
    ],
    'indent'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Indent'],
        'view'       => ['index/index'],
    ],
    'comment'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Comment'],
        'view'       => ['index/index'],
    ],
    'shopping'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Shopping'],
        'view'       => ['index/index'],
    ],
    'attachment'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Attachment'],
        'view'       => ['index/index'],
    ],
    'admin'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Admin'],
        'view'       => ['index/index'],
    ],
    'auth'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Auth'],
        'view'       => ['index/index'],
    ],
    'tags'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Tags'],
        'view'       => ['index/index'],
    ],
    'test'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model', 'view'],
        'controller' => ['IndexController'],
        'model'      => ['Tags'],
        'view'       => ['index/index'],
    ],
    // 其他更多的模块定义
];
