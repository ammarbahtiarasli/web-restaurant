<?php

namespace App\Models;

use CodeIgniter\Model;

class TransaksiModel extends Model
{
    protected $table      = 'transaksi';
    protected $primaryKey = 'id_transaksi';
    protected $timestamp = true;
    protected $allowedFields = ['id_order', 'id_user', 'total_bayar'];

    public function getTransaksi($transaksi = false)
    {
        if ($transaksi == false) {
            return $this->findAll();
        }

        return $this->where(['transaksi' => $transaksi])->first();
    }

    public function search($keyword)
    {
        return $this->table('transaksi')->like('id_transaksi', $keyword)->orLike('id_order', $keyword);
    }
}
