<?php

namespace app\controller;

use think\Controller;
// use app\model\Admin();

class Login extends Controller
{
    public function index()
    {
        // 判断用户是否登录
        if (session('?admin')) {
            $this->redirect('Admin/index');
        }

        return view();
    }

    //登录
    public function login()
    {
        if (request()->isAjax()) {
            $res = model('Admin')->login(input());
            if ($res != 1) {
                $this->error($res);
            } else {
                $this->success('登录成功！', 'Admin/index');
            }
        }
    }
}