<?php

namespace App\Controllers;

use App\Models\KategoriModel;
use App\Models\MenuModel;
use App\Models\GalleryModel;
use App\Models\PesananModel;
use App\Models\DetailPesananModel;
use App\Models\TransaksiModel;
use Myth\Auth\Models\UserModel as ModelsUserModel;
use vendor\Myth\Auth\UserModel;
use TCPDF;

class Admin extends BaseController
{
	protected $MenuModel;
	protected $KategoriModel;
	protected $GalleryModel;
	protected $PesananModel;
	protected $DetailPesananModel;
	protected $UserModel;
	protected $TransaksiModel;
	public function __construct()
	{
		$this->MenuModel = new MenuModel();
		$this->KategoriModel = new KategoriModel();
		$this->GalleryModel = new GalleryModel();
		$this->PesananModel = new PesananModel();
		$this->DetailPesananModel = new DetailPesananModel();
		$this->UserModel = new ModelsUserModel();
		$this->TransaksiModel = new TransaksiModel();
	}

	public function index()
	{
		$pesanan = $this->PesananModel->paginate(5);
		$transaksi = $this->TransaksiModel->paginate(5);
		$data = [
			'title' => 'Dashboard - AMRBHTR RESTAURANT',
			'pesanan' => $pesanan,
			'transaksi' => $transaksi
		];
		return view('Admin/index', $data);
	}

	public function kategori()
	{
		$kategori = $this->KategoriModel->findAll();
		$data = [
			'title' => 'Kategori menu - AMRBHTR RESTAURANT',
			'kategori' => $kategori
		];
		return view('Admin/kategori', $data);
	}

	public function tambah_kategori()
	{
		$data = [
			'title' => 'Tambah Kategori - AMRBHTR RESTAURANT',
			'validation' => \config\Services::validation(),
		];
		return view('Admin/tambah_kategori', $data);
	}

	public function save_kategori()
	{
		// validasi
		if (!$this->validate([
			'nama_kategori' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.',
				]
			],

		])) {
			return redirect()->to('/admin/tambah_kategori')->withInput();
		}

		$this->KategoriModel->save([
			'nama_kategori' => $this->request->getVar('nama_kategori'),

		]);
		return redirect()->to('/admin/kategori');
	}

	public function delete_kategori($id_kategori)
	{
		$this->KategoriModel->delete($id_kategori);
		return redirect()->to('/admin/kategori');
	}

	public function pengguna()
	{
		$currentPage = $this->request->getVar('page_user') ? $this->request->getVar('page_user') : 1;

		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$user = $this->UserModel->search($keyword);
		} else {
			$user = $this->UserModel;
		}


		$user = $user->paginate(5, 'user');
		$data = [
			'title' => 'Pengguna - AMRBHTR RESTAURANT',
			'user' => $user,
			'pager' => $this->UserModel->pager,
			'currentPage' => $currentPage
		];
		return view('Admin/pengguna', $data);
	}

	public function menu()
	{
		$currentPage = $this->request->getVar('page_menu') ? $this->request->getVar('page_menu') : 1;

		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$menu = $this->MenuModel->search($keyword);
		} else {
			$menu = $this->MenuModel;
		}


		$menu = $menu->paginate(5, 'menu');
		$data = [
			'title' => 'Menu - AMRBHTR RESTAURANT',
			'menu' => $menu,
			'pager' => $this->MenuModel->pager,
			'currentPage' => $currentPage
		];
		return view('Admin/menu', $data);
	}

	public function tambah_menu()
	{
		$kategori = $this->KategoriModel->findAll();
		$data = [
			'title' => 'tambah Menu - AMRBHTR RESTAURANT',
			'validation' => \config\Services::validation(),
			'kategori' => $kategori
		];
		return view('Admin/tambah_menu', $data);
	}

	public function save_menu()
	{
		// validasi
		if (!$this->validate([
			'nama_menu' => [
				'rules' => 'required|is_unique[menu.nama_menu]',
				'errors' => [
					'required' => '{field} harus diisi.',
					'is_unique' => '{field} sudah ada'
				]
			],
			'harga' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'nama_kategori' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'deskripsi' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} harus diisi.'
				]
			],
			'gambar' => [
				'rules' => 'max_size[gambar,10240]|is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'Ukuran gambar terlalu besar',
					'is_image' => 'Yang anda pilih bukan gambar',
					'mime_in' => 'Yang anda pilih bukan gambar'
				]
			],


		])) {
			// $validation = \config\Services::validation();
			return redirect()->to('/admin/tambah_menu')->withInput();
		}

		$fileGambar =  $this->request->getFile('gambar');

		if ($fileGambar->getError() == 4) {
			$namaGambar = 'default.jpg';
		} else {

			$namaGambar = $fileGambar->getName();

			$fileGambar->move('images', $namaGambar);
		};

		$this->MenuModel->save([
			'nama_menu' => $this->request->getVar('nama_menu'),
			'harga' => $this->request->getVar('harga'),
			'nama_kategori' => $this->request->getVar('nama_kategori'),
			'deskripsi' => $this->request->getVar('deskripsi'),
			'gambar' => $namaGambar
		]);

		session()->setFlashdata('pesan', 'Data Berhasil ditambahkan.');

		return redirect()->to('/admin/menu');
	}

	public function delete_menu($id_menu)
	{

		$menu = $this->MenuModel->find($id_menu);

		if ($menu['gambar'] != 'default.jpg') {
		}

		$this->MenuModel->delete($id_menu);
		return redirect()->to('/admin/menu');
	}

	public function edit_menu($id_menu)
	{
		$data = [
			'title' => 'Form Edit Menu - AMRBHTR RESTAURANT',
			'menu' => $this->MenuModel->getMenu($id_menu)
		];
		return view('Admin/edit_menu', $data);
	}

	public function updateMenu($id_menu)
	{
		// Mengambil value dari form dengan method POST
		$nama_menu = $this->request->getPost('nama_menu');
		$nama_kategori = $this->request->getPost('nama_kategori');
		$harga = $this->request->getPost('harga');
		$deskripsi = $this->request->getPost('deskripsi');
		$gambar = $this->request->getPost('gambar');

		// Membuat array collection yang disiapkan untuk insert ke table
		$data = [
			'nama_menu' => $nama_menu,
			'nama_kategori' => $nama_kategori,
			'harga' => $harga,
			'deskripsi' => $deskripsi,
			'gambar' => $gambar
		];

		/* 
		Membuat variabel ubah yang isinya merupakan memanggil function 
		update_product dan membawa parameter data beserta id
		*/
		$ubah = $this->MenuModel->updateMenu($data, $id_menu);

		// Jika berhasil melakukan ubah
		if ($ubah) {
			// Deklarasikan session flashdata dengan tipe info
			session()->setFlashdata('pesan', 'Data Berhasil diupdate.');
			// Redirect ke halaman product
			return redirect()->to('/admin/menu');
		}
	}

	public function pesanan()
	{

		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$pesanan = $this->PesananModel->search($keyword);
		} else {
			$pesanan = $this->PesananModel;
		}


		$pesanan = $this->PesananModel->paginate(5, 'pesanan');
		$data = [
			'title' => 'Pesanan - AMRBHTR RESTAURANT',
			'pesanan' => $pesanan,
			'detailpesanan' => $this->DetailPesananModel->findAll(),
			'pager' => $this->PesananModel->pager,
		];
		return view('Admin/pesanan', $data);
	}

	public function detail_pesanan($id_order)
	{
		$data['pesanan'] = $this->PesananModel->ambil_id_pesanan($id_order);
		$data['detailpesanan'] = $this->DetailPesananModel->ambil_id_detailpesanan($id_order);
		return view('admin/detail_pesanan', $data);
	}

	public function transaksi()
	{
		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$transaksi = $this->TransaksiModel->search($keyword);
		} else {
			$transaksi = $this->TransaksiModel;
		}


		$transaksi = $this->TransaksiModel->paginate(5, 'transaksi');
		$data = [
			'title' => 'Transaksi - AMRBHTR RESTAURANT',
			'transaksi' => $transaksi,
			'pager' => $this->TransaksiModel->pager,
		];
		return view('Admin/transaksi', $data);
	}

	public function getTransaksi()
	{
		//ambil id menu simpan ke daftar transaksi
	}

	public function laporan()
	{
		$data = [
			'title' => 'Laporan - AMRBHTR RESTAURANT'
		];
		return view('Admin/laporan', $data);
	}

	public function tambah_pengguna()
	{
		$data = [
			'title' => 'tambah Pengguna - AMRBHTR RESTAURANT'
		];
		return view('Admin/tambah_pengguna', $data);
	}

	public function save_pengguna()
	{
		// validasi
		if (!$this->validate([
			'nama_menu' => 'required|is_unique[menu.nama_menu]',
			'harga' => 'required',
			'nama_kategori' => 'required',
			'status_menu' => 'required'
		])) {
			return redirect()->to('/admin/tambah_pengguna');
		}

		$this->PenggunaModel->save([
			'nama_menu' => $this->request->getVar('nama_menu'),
			'harga' => $this->request->getVar('harga'),
			'nama_kategori' => $this->request->getVar('nama_kategori'),
			'status_menu' => $this->request->getVar('status_menu'),
			'gambar' => $this->request->getVar('gambar')
		]);

		session()->setFlashdata('pesan', 'Data Berhasil ditambahkan.');

		return redirect()->to('/admin/pengguna');
	}

	public function delete_pengguna($id)
	{
		$this->PenggunaModel->delete($id);
		return redirect()->to('/admin/pengguna');
	}

	public function gallery()
	{
		$gambar = $this->GalleryModel->paginate(5, 'gambar');
		$data = [
			'title' => 'Gallery - AMRBHTR RESTAURANT',
			'gambar' => $gambar,
			'pager' => $this->GalleryModel->pager,
		];
		return view('Admin/gallery', $data);
	}

	public function tambah_gallery()
	{
		session();
		$data = [
			'title' => 'tambah gallery - AMRBHTR RESTAURANT',
			'validation' => \config\Services::validation()

		];
		return view('Admin/tambah_gallery', $data);
	}

	public function save_gambar()
	{
		// validasi
		if (!$this->validate([
			'gambar' => [
				'rules' => 'is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'is_image' => 'Yang anda pilih bukan gambar',
					'mime_in' => 'Yang anda pilih bukan gambar'
				]
			],

		])) {
			return redirect()->to('/admin/tambah_gallery')->withInput();
		}

		$fileGallery = $this->request->getFile('gambar');

		if ($fileGallery->getError() == 4) {
			$namaGallery = 'default.jpg';
		} else {

			$namaGallery = $fileGallery->getName();

			$fileGallery->move('images', $namaGallery);
		};

		$this->GalleryModel->save([
			'deskripsi' => $this->request->getVar('deskripsi'),
			'gambar' => $namaGallery

		]);


		session()->setFlashdata('pesan', 'Data Berhasil ditambahkan.');

		return redirect()->to('/admin/gallery');
	}

	public function delete_gambar($id_gallery)
	{

		$gambar = $this->GalleryModel->find($id_gallery);

		if ($gambar['gambar'] != 'default.jpg') {
		}

		$this->GalleryModel->delete($id_gallery);

		session()->setFlashdata('delete', 'Data berhasil dihapus');

		return redirect()->to('/admin/gallery');
	}

	public function masukTransaksi()
	{
		$this->TransaksiModel->save([
			'id_order' => $this->request->getVar('id_order'),
			'id_user' => $this->request->getVar('id_user'),
			'total_bayar' => $this->request->getVar('total'),

		]);

		session()->setFlashdata('pesan', 'Pesanan Selesai.');

		return redirect()->to('/admin/pesanan');
	}

	public function invoice()
	{
		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$pesanan = $this->PesananModel->search($keyword);
		} else {
			$pesanan = $this->PesananModel;
		}


		$pesanan = $this->PesananModel->findAll();
		$data = [
			'title' => 'Nota - AMRBHTR RESTAURANT',
			'pesanan' => $pesanan,
		];
		$html = view('admin/invoice', $data);

		$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('AMRBHTR');
		$pdf->SetTitle('Invoice');
		$pdf->SetSubject('invoice');

		$pdf->setPrintHeader(false);
		$pdf->setPrintFooter(false);

		$pdf->AddPage();

		$pdf->writeHTML($html, true, false, true, false, '');

		$this->response->setContentType('application/pdf');
		$pdf->Output('invoice.pdf', 'I');
	}

	public function data_menu()
	{
		$currentPage = $this->request->getVar('page_menu') ? $this->request->getVar('page_menu') : 1;

		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$menu = $this->MenuModel->search($keyword);
		} else {
			$menu = $this->MenuModel;
		}


		$menu = $menu->findAll();
		$data = [
			'title' => 'Menu - AMRBHTR RESTAURANT',
			'menu' => $menu,
		];

		$html = view('admin/data_menu', $data);

		$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('AMRBHTR');
		$pdf->SetTitle('Daftar Menu');
		$pdf->SetSubject('Daftar Menu');

		$pdf->setPrintHeader(false);
		$pdf->setPrintFooter(false);

		$pdf->AddPage();

		$pdf->writeHTML($html, true, false, true, false, '');

		$this->response->setContentType('application/pdf');
		$pdf->Output('data_menu.pdf', 'I');
	}

	public function data_transaksi()
	{
		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$transaksi = $this->TransaksiModel->search($keyword);
		} else {
			$transaksi = $this->TransaksiModel;
		}


		$transaksi = $transaksi->findAll();
		$data = [
			'title' => 'Transaksi - AMRBHTR RESTAURANT',
			'transaksi' => $transaksi,
		];
		$html = view('admin/data_transaksi', $data);

		$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('AMRBHTR');
		$pdf->SetTitle('Daftar transaksi');
		$pdf->SetSubject('Daftar transaksi');

		$pdf->setPrintHeader(false);
		$pdf->setPrintFooter(false);

		$pdf->AddPage();

		$pdf->writeHTML($html, true, false, true, false, '');

		$this->response->setContentType('application/pdf');
		$pdf->Output('data_transaksi.pdf', 'I');
	}

	public function data_pengguna()
	{

		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$user = $this->UserModel->search($keyword);
		} else {
			$user = $this->UserModel;
		}


		$user = $user->findAll();
		$data = [
			'title' => 'User - AMRBHTR RESTAURANT',
			'user' => $user,
		];
		$html = view('admin/data_pengguna', $data);

		$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('AMRBHTR');
		$pdf->SetTitle('Daftar pengguna');
		$pdf->SetSubject('Daftar pengguna');

		$pdf->setPrintHeader(false);
		$pdf->setPrintFooter(false);

		$pdf->AddPage();

		$pdf->writeHTML($html, true, false, true, false, '');

		$this->response->setContentType('application/pdf');
		$pdf->Output('data_transaksi.pdf', 'I');
	}




	//--------------------------------------------------------------------

}
