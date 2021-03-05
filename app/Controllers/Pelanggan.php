<?php

namespace App\Controllers;

use App\Models\MenuModel;
use App\Models\GalleryModel;
use Myth\Auth\Models\UserModel;
use phpDocumentor\Reflection\DocBlock\Tags\Return_;

class Pelanggan extends BaseController
{
	protected $MenuModel;
	protected $GalleryModel;
	protected $UserModel;
	public function __construct()
	{
		$this->MenuModel = new MenuModel();
		$this->GalleryModel = new GalleryModel();
		$this->UserModel = new UserModel();
	}
	public function index()
	{
		$data = [
			'title' => 'AMRBHTR RESTAURANT',
			'menu' => $this->MenuModel->getMenu()
		];
		return view('pelanggan/home', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About - AMRBHTR RESTAURANT'
		];
		return view('pelanggan/about', $data);
	}


	public function contact()
	{
		$data = [
			'title' => 'Contact - AMRBHTR RESTAURANT'
		];
		return view('pelanggan/contact', $data);
	}

	public function gallery()
	{
		$data = [
			'title' => 'Gallery - AMRBHTR RESTAURANT',
			'gambar' => $this->GalleryModel->getGambar()
		];
		return view('pelanggan/gallery', $data);
	}

	public function pesanan()
	{
		$data = [
			'title' => 'Pesanan - AMRBHTR RESTAURANT'
		];
		return view('pelanggan/pesanan', $data);
	}

	public function keranjang()
	{

		$data = [
			'title' => 'Keranjang - AMRBHTR RESTAURANT'
		];
		return view('pelanggan/keranjang', $data);
	}

	public function profile()
	{
		$profile = $this->UserModel->findAll();
		$data = [
			'title' => 'Profile User - AMRBHTR RESTAURANT',
			'profile' => $profile,
		];
		return view('pelanggan/profile', $data);
	}



	//--------------------------------------------------------------------

}
