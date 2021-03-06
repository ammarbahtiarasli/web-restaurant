<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <form action="/menu/getPesanan" method="POST">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Profil Pengguna</li>
                    </ol>
                </nav>
        </div>
    </div>
</div>
<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-3" data-aos="fade-right">
            <h2 class="my-4">Profil Pengguna</h2>
            <hr>
            <!-- <div class="list-group shadow-sm">
                <a href="#" class="list-group-item">Makanan</a>
                <a href="#" class="list-group-item">Minuman</a>
            </div> -->
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-lg-9">
            <div class="card mt-4 mb-4 shadow" data-aos="fade">
                <!-- <img class="card-img-top img-fluid p-4" src="/images/default.jpg" alt=""> -->
                <div class="card-body">
                    <div class="mb-3">
                        <label for="nama lengkap" class="form-label">Nama Lengkap</label>
                        <h5></h5>
                    </div>
                    <hr>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <h5><?= user()->username; ?></h5>
                    </div>
                    <hr>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <h5><?= user()->email; ?></h5>
                    </div>
                    <hr>
                    <br>
                    <a href="/menu">Kembali ke daftar menu</a>
                </div>
            </div>
            <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
</div>
<br>
<br>
<br>
<br>
<?= $this->endSection(); ?>