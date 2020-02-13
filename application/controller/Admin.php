<?php

namespace app\controller;

use Exception;
use think\Controller;

class Admin extends Controller
{
    // 检测是否登录
    public function initialize()
    {
        if (!session('?admin')) {
            $this->redirect('Login/index');
        }
    }

    // 首页
    public function index()
    {
        return view();
    }

    // 添加作品
    public function upload()
    {
        if (request()->isPost()) {
            $validate = [
                'size' => 1567800,
                'ext' => 'jpg,jpeg,png,gif'
            ];

            $file = request()->file('pic');
            $info = $file->validate($validate)->move('./uploads');
            if ($info) {
                // 成功上传后 获取上传信息,转交给模型
                $data['pic'] = $info->getSaveName();
                $data['id'] = input('id');

                $result = model('Photos')->upload($data);
                if ($result == 1) {
                    $this->success('上传成功！', 'Admin/all');
                } else {
                    return $file->getError();
                }
                return $result;
            } else {
                // 上传失败获取错误信息
                return $this->error($file->getError());
            }
        }
        return view();
    }

    // 作品列表
    public function all()
    {
        $photoInfo = model('Photos')->select();
        return view('all', ['photoInfo' => $photoInfo]);
    }

    // 删除作品
    public function del()
    {
        if (request()->isAjax()) {
            $photoInfo = model('Photos')->where('id', input('post.id'))->find();
            return $photoInfo->delete() == true ? $this->success('删除成功！', 'Admin/all') : $this->error('失败');
        }
    }

    // 关于我
    public function about()
    {
        return view();
    }

    // 退出登录
    public function loginOut()
    {
        session('admin', null);
        if (!session('?admin')) {
            $this->success('退出成功！', 'Login/index');
        }
    }
}