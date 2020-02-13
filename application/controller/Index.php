<?php

namespace app\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        $photos = model('Photos')->select();
        return view('index', ['photos' => $photos]);
    }

    public function about()
    {
        return view();
    }
}