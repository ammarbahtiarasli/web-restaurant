<?php

namespace App\Models;

use CodeIgniter\Model;

class DetailPesananModel extends Model
{
    protected $table      = 'detail_pesanan';
    protected $primaryKey = 'id_detail_order';
    protected $timestamp = true;
    protected $allowedFields = ['id_detail_order', 'id_order', 'nama_menu', 'qty'];

    public function getDetailPesanan($detailpesanan = false)
    {
        if ($detailpesanan == false) {
            return $this->findAll();
        }

        return $this->where(['detailpesanan' => $detailpesanan])->first();
    }

    public function search($keyword)
    {
        return $this->table('detailpesanan')->like('nama_menu', $keyword)->orLike('id_order', $keyword);
    }

    public function ambil_id_detailpesanan($id_order)
    {
        $result = $this->DetailPesananModel->where('id_order', $id_order)->get('detailpesanan');
        if ($result->num_rows() > 0) {
            return $result->result();
        } else {
            return false;
        }
    }
}
