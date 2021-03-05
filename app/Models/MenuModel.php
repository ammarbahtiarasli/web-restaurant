<?php

namespace App\Models;

use CodeIgniter\Model;

class MenuModel extends Model
{
    protected $table      = 'menu';
    protected $primaryKey = 'id_menu';
    protected $allowedFields = ['nama_menu', 'harga', 'nama_kategori', 'gambar', 'deskripsi'];

    public function getMenu($nama_menu = false)
    {
        if ($nama_menu == false) {
            return $this->findAll();
        }

        return $this->where(['nama_menu' => $nama_menu])->first();
    }

    public function updateMenu($data, $id_menu)
    {
        return $this->db->table($this->table)->update($data, ['id_menu' => $id_menu]);
    }

    public function search($keyword)
    {
        return $this->table('menu')->like('nama_menu', $keyword)->orLike('nama_kategori', $keyword);
    }
}
