<?php

namespace App\Models;

use CodeIgniter\Model;

class PesananModel extends Model
{
    protected $table      = 'pesanan';
    protected $primaryKey = 'id_order';
    protected $timestamp = true;
    protected $allowedFields = ['no_meja', 'nama_user'];

    public function getPesanan($pesanan = false)
    {
        if ($pesanan == false) {
            return $this->findAll();
        }

        return $this->where(['pesanan' => $pesanan])->first();
    }

    public function search($keyword)
    {
        return $this->table('pesanan')->like('nama_menu', $keyword)->orLike('id_order', $keyword);
    }

    public function ambil_id_pesanan($id_order)
    {
        $result = $this->PesananModel->where('id_order', $id_order)->limit(1)->get('pesanan');
        if ($result->num_rows() > 0) {
            return $result->row();
        } else {
            return false;
        }
    }
}
