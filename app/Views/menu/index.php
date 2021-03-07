<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Daftar Menu</li>
                </ol>
            </nav>
        </div>
        <div class="col-lg-12" data-aos="fade">
            <?php
            if (session()->getFlashdata('pesan')) {
                echo '<div class="alert alert-success alert-dismissible">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                echo session()->getFlashdata('pesan');
                echo '</div>';
            }
            ?>
        </div>
    </div>
    <!-- Heading Row -->
    <div class="row align-items-center my-2">
        <div class="col-lg-7" data-aos="fade-right">
            <img class="img-fluid rounded mb-4 mb-lg-0" src="/images/bg_menu.jpg" alt="">
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-5" data-aos="fade-left">
            <h1 class="font-weight-light">Daftar Menu</h1>
            <p>Sedia menu makanan dan minuman dari penjuru Indonesia. pilih menu yang kamu suka dan dapatkan promo spesial.</p>
            <?php
            $keranjang = $cart->contents();
            $jml_item = 0;
            foreach ($keranjang as $key => $value) {
                $jml_item = $jml_item + $value['qty'];
            }
            ?>
            <?php if (in_groups('user')) : ?>
                <a class="btn btn-info btn-block btn-lg custom-button" href="/menu/cart">Keranjang saya <i class='bx bxs-basket'></i><span class="badge bg-default"><?= $jml_item ?></span></a>
            <?php endif; ?>
            <?php if (in_groups('waiter')) : ?>
                <a class="btn btn-info btn-block btn-lg custom-button" href="/menu/cart">Keranjang saya <i class='bx bxs-basket'></i><span class="badge bg-default"><?= $jml_item ?></span></a>
            <?php endif; ?>
            <?php if (in_groups('user')) : ?>
                <a class="btn btn-outline-warning btn-block btn-lg" href="#">Histori Pesanan</a>
            <?php endif; ?>
            <?php if (in_groups('waiter')) : ?>
                <a class="btn btn-outline-warning btn-block btn-lg" href="#">Histori Pesanan</a>
            <?php endif; ?>

        </div>
        <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <div class="card text-white bg-success my-4 py-4 text-center" data-aos="fade">
        <div class="card-body">
            <?php if (empty(logged_in())) { ?>
                Silahkan Login terlebih dahulu
            <?php } else { ?>
                <marquee class="text-white m-0">Hai <?= user()->username; ?>, Selamat datang di website AMRBHTR RESTAURANT - Makananmu adalah akun bankmu. Pilihan makanan yang baik adalah investasi yang baik. -
                    <?= date('d M Y'); ?>
                </marquee>
            <?php  } ?>

        </div>
    </div>
    <div class="dropdown-divider"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <form action="" method="POST">
                    <div class="input-group mb-2 mt-2" data-aos="fade">
                        <input type="search" class="form-control" placeholder="Cari Menu Favorit Mu .." aria-label="keyword" aria-describedby="keyword" name="keyword">
                        <button class="btn btn-success" type="submit" name="submit" id="submit"><i class='bx bx-search'></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="dropdown-divider"></div>

    <!-- Page Features -->
    <div class="row text-center">

        <?php foreach ($menu as $menu) : ?>
            <div class="col-lg-3 col-md-6 mb-4 mt-2" data-aos="zoom-in-up">
                <?php
                echo form_open('menu/add');
                echo form_hidden('id', $menu['id_menu']);
                echo form_hidden('price', $menu['harga']);
                echo form_hidden('name', $menu['nama_menu']);
                //option
                echo form_hidden('gambar', $menu['gambar']);
                echo form_hidden('nama_kategori', $menu['nama_kategori']);
                echo form_hidden('deskripsi', $menu['deskripsi']);

                ?>
                <div class="card h-100 shadow">
                    <img class="card-img-top" src="/images/<?= $menu['gambar']; ?>" alt="">
                    <div class="card-body">
                        <h4 class="card-title"><?= $menu['nama_menu']; ?></h4>
                        <i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star-half'></i>
                        <p class="card-text"><?= $menu['nama_kategori']; ?></p>
                        <h4 class="card-text"><?= "Rp. " . number_format($menu['harga']); ?></h4>
                    </div>
                    <div class="card-footer">
                        <?php if (in_groups('user')) : ?>
                            <button type="submit" class="btn btn-info custom-button"><i class='bx bxs-cart'></i> Pesan</button>
                        <?php endif; ?>
                        <?php if (in_groups('waiter')) : ?>
                            <button type="submit" class="btn btn-info custom-button"><i class='bx bxs-cart'></i> Pesan</button>
                        <?php endif; ?>
                        <a class="btn btn-primary" href="/menu/<?= $menu['nama_menu']; ?>"><i class='bx bxs-detail'></i> Detail</a>

                    </div>
                </div>
                <?php echo form_close() ?>
            </div>
        <?php endforeach; ?>



        <div class="container">
            <div class="row">
                <div class="col">
                    <hr>
                    <?= $pager->links('menu', 'menu_pagination'); ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

</div>

<?= $this->endSection(); ?>