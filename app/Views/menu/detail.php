<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <form action="" method="POST">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="/menu">Menu</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Detail</li>
                    </ol>
                </nav>
        </div>
    </div>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <h2 class="my-4" data-aos="fade-right">Detail Menu</h2>
                <div class="list-group shadow-sm" data-aos="fade-right">
                    <?php
                    $keranjang = $cart->contents();
                    $jml_item = 0;
                    foreach ($keranjang as $key => $value) {
                        $jml_item = $jml_item + $value['qty'];
                    }
                    ?>
                    <?php if (in_groups('user')) : ?>
                        <a href="#" class="list-group-item">Keranjang saya <i class='bx bxs-basket'></i><span class="badge bg-default"><?= $jml_item ?></span></a>
                        <a href="#" class="list-group-item">Histori Pesanan</a>
                    <?php endif; ?>

                </div>
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-lg-9">
                <div class="card mt-4 mb-4 shadow" data-aos="fade-left">
                    <img class="card-img-top img-fluid" src="/images/<?= $menu['gambar']; ?>" alt="">
                    <div class="card-body">
                        <h3 class="card-title"><?= $menu['nama_menu']; ?></h3>
                        <h6><?= $menu['nama_kategori']; ?></h6>
                        <i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star-half'></i>
                        <h4><?= "Rp. " . number_format($menu['harga']); ?></h4>
                        <p class="card-text"><?= $menu['deskripsi']; ?></p>
                        <a href="/menu">Kembali ke daftar menu</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

    </div>

</div>
<!-- /.container -->
<?= $this->endSection(); ?>