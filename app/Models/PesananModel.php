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

    public function get_pesanan_detail($id_pesanan = null)
    {
        $this->db->from('pesanan');
        $this->db->join('detailpesanan', 'pesanan.id_order = detailpesanan.id_order');
        if ($id_pesanan != null) {
            $this->db->where('pesanan.id_pesanan', $id_pesanan);
        }
        $result = $this->db->get();
        return $result->result();
    }
}
