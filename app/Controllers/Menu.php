<?php

namespace App\Controllers;

use App\Models\MenuModel;
use App\Models\PesananModel;
use App\Models\DetailPesananModel;
use Myth\Auth\Models\UserModel;

class Menu extends BaseController
{
    protected $MenuModel;
    protected $PesananModel;
    protected $UserModel;
    protected $DetailPesananModel;
    public function __construct()
    {
        $this->UserModel = new UserModel();
        $this->MenuModel = new MenuModel();
        $this->PesananModel = new PesananModel();
        $this->DetailPesananModel = new DetailPesananModel();
        helper('form');
    }
    public function index()
    {
        $currentPage = $this->request->getVar('page_menu') ? $this->request->getVar('page_menu') : 1;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $menu = $this->MenuModel->search($keyword);
        } else {
            $menu = $this->MenuModel;
        }

        $user = $this->UserModel->findAll();


        $data = [
            'title' => 'Menu - AMRBHTR RESTAURANT',
            'cart' => \Config\Services::cart(),
            'menu' => $menu->paginate(12, 'menu'),
            'user' => $user,
            'pager' => $this->MenuModel->pager,
            'currentPage' => $currentPage
        ];
        return view('menu/index', $data);
    }

    public function detail($nama_menu)
    {
        $data = [
            'title' => 'Detail - AMRBHTR RESTAURANT',
            'cart' => \Config\Services::cart(),
            'menu' => $this->MenuModel->getMenu($nama_menu)
        ];

        // jika menu tidak ada di tabel
        if (empty($data['menu'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Menu' . $nama_menu . 'tidak ditemukan.');
        }
        return view('menu/detail', $data);
    }

    public function pesanan()
    {
        $data = [
            'title' => 'Pesanan - AMRBHTR RESTAURANT',
            'validation' => \config\Services::validation(),
        ];
        return view('menu/pesanan', $data);
    }

    // isi tabel DETAIL PESANAN DAN PESANAN //
    public function getPesanan()
    {
        // validasi
        if (!$this->validate([
            'no_meja' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.',
                ]
            ],

        ])) {
            return redirect()->to('/menu/pesanan')->withInput();
        }

        $this->PesananModel->save([
            'no_meja' => $this->request->getVar('no_meja'),
            'nama_user' => $this->request->getVar('nama_user'),
        ]);

        $cart = \Config\Services::cart();
        $response = $cart->contents();

        $id_order = $this->PesananModel->getInsertID('id_order');
        foreach ($response as $key =>  $value) {
            $this->DetailPesananModel->save([
                'id_order' => $id_order,
                'qty' => $value['qty'],
                'nama_menu' => $value['name'],
            ]);
        }

        $cart = \Config\Services::cart();
        $cart->destroy();

        return redirect()->to('/menu/success');
    }

    public function success()
    {
        $id_order = $this->PesananModel->getInsertID('id_order');

        $data = [
            'title' => 'Pesanan Berhasil - AMRBHTR RESTAURANT',
            'id_order' => $id_order
        ];
        return view('/menu/success', $data);
    }

    public function cart()
    {
        $data = [
            'title' => 'Keranjang Saya - AMRBHTR RESTAURANT',
            'cart' => \Config\Services::cart(),
        ];
        return view('/menu/cart', $data);
    }

    public function cek()
    {
        $cart = \Config\Services::cart();
        $response = $cart->contents();
        echo '<pre>';
        print_r($response);
        echo '</pre>';
    }

    public function add()
    {
        $cart = \Config\Services::cart();
        $cart->insert(array(
            'id'      => $this->request->getPost('id'),
            'qty'     => 1,
            'price'   => $this->request->getPost('price'),
            'name'    => $this->request->getPost('name'),
            'options' => array(
                'gambar' => $this->request->getPost('gambar'),
                'deskripsi' => $this->request->getPost('deskripsi'),
            )
        ));
        session()->setFlashdata('pesan', 'Menu dimasukkan ke Keranjang!');
        return redirect()->to(base_url('menu'));
    }

    public function clear()
    {
        $cart = \Config\Services::cart();
        $cart->destroy();
        session()->setFlashdata('pesan', 'Keranjang berhasil dihapus !');
        return redirect()->to(base_url('menu/cart'));
    }

    public function update()
    {
        $cart = \Config\Services::cart();
        $i = 1;
        foreach ($cart->contents() as $key => $value) {
            $cart->update(array(
                'rowid' => $value['rowid'],
                'qty'    => $this->request->getPost('qty' . $i++),

            ));
        }
        session()->setFlashdata('pesan', 'Keranjang Berhasil Di Update !!');
        return redirect()->to(base_url('menu/cart'));
    }

    public function delete($rowid)
    {
        $cart = \Config\Services::cart();
        $cart->remove($rowid);

        session()->setFlashdata('pesan', 'Menu Berhasil Di Hapus !!');
        return redirect()->to(base_url('menu/cart'));
    }

    //--------------------------------------------------------------------

}
