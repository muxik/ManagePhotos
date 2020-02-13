<?php

namespace app\model;

use think\Model;
use think\model\concern\SoftDelete;

class Photos extends Model
{
    // 软删除
    use SoftDelete;

    public function upload($data)
    {
        if ($data['id']) {
            $result = $this->where('id', $data['id'])->find();
            if ($result->save($data)) {
                return 1;
            } else {
                return '修改失败！';
            }
        }
        $result = $this->save($data);
        return $result == true ? 1 : '上传失败！';
    }
}