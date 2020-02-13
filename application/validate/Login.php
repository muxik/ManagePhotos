<?php

namespace app\validate;

use think\Validate;

class Login extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        'username|帐号' => 'require',
        'password|密码' => 'require'
    ];

    public function sceneLogin()
    {
        return $this->rule(['username', 'password']);
    }
}
