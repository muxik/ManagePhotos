<?php

namespace app\model;

use think\Model;

class Admin extends Model
{
    // 登录
    public function login($data)
    {
        // 验证数据有效性
        $validate = new \app\validate\Login();
        if (!$validate->scene('login')->check($data)) {
            return $validate->getError();
        }

        // 返回bool值
        $result = $this->where($data)->find();
        if ($result) {
            session('admin', $result->username);
            return 1;
        } else {
            return '登录失败';
        }
    }
}
