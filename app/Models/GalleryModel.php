<?php

namespace App\Models;

use CodeIgniter\Model;

class GalleryModel extends Model
{
    protected $table      = 'gallery';
    protected $primaryKey = 'id_gallery';
    protected $allowedFields = ['gambar', 'deskripsi'];

    public function getgambar($gambar = false)
    {
        if ($gambar == false) {
            return $this->findAll();
        }

        return $this->where(['gambar' => $gambar])->first();
    }
}
