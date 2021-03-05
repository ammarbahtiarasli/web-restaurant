<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="/menu">Menu</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Pesanan</li>
                </ol>
            </nav>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <h3>Selesaikan Pesanan anda !</h3>
                            <hr>
                            <h5>Pilih Nomor Meja</h5>
                            <form action="/menu/getPesanan" method="POST">
                                <?= csrf_field(); ?>
                                <div class="row mb-3 mt-5">
                                    <label for="no_meja" class="col-sm-2 col-form-label">No Meja :</label>
                                    <div class="col-md">
                                        <input type="number" min="1" max="25" class="form-control <?= ($validation->hasError('no_meja')) ? 'is-invalid' : ''; ?>" id=" no_meja" name="no_meja" autofocus>
                                        <div class="invalid-feedback">
                                            <?= $validation->getError('no_meja'); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-end">

                                    <input type="hidden" name="nama_user" id="nama_user" value="<?= user()->username; ?>">
                                    <button class="btn btn-success mr-3 mt-3">Pesan</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?= $this->endSection(); ?>



<!-- <div class="row">
        <div class="col-md-6">
            <div class="card mt-5 mb-5 shadow" data-aos="fade-right">
                <img class="card-img-top img-fluid" src="/images/" alt="">
                <div class="card-body">
                    <h3 class="card-title"></h3>
                    <i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star'></i><i class='bx bxs-star-half'></i>
                    <h4>/h4>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 mt-5 mb-5" data-aos="fade-left">
            <div class="col mb-4">
                <h1>Form Pesanan</h1>
                <hr>
            </div>

            <form id="formD" name="formD" action="/menu/getPesanan" method="POST" enctype="multipart/form-data">
                <script type="text/javascript" language="Javascript">
                    var total = 0;
                    hargasatuan = document.formD.harga.value;
                    document.formD.txtDisplay.value = hargasatuan;
                    jumlah = document.formD.jmlpsn.value;
                    document.formD.txtDisplay.value = jumlah;

                    function OnChange(value) {
                        hargasatuan = document.formD.harga.value;
                        jumlah = document.formD.jmlpsn.value;
                        total = hargasatuan * jumlah;
                        document.formD.txtDisplay.value = total;
                    }
                </script>
                <input type="hidden" name="nama_menu" value="<">
                <input type="hidden" name="id_user" value="">
                <input type="hidden" name="tanggal" value="">
                <p>Pilih Nomor Meja 1 - 25</p>
                <div class="row mb-3">
                    <label for="no_meja" class="col-sm-2 col-form-label">No Meja</label>
                    <div class="col">
                        <input type="number" class="form-control" id="no_meja" name="no_meja" autofocus value="">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="harga" class="col-sm-2 col-form-label">harga</label>
                    <div class="col">
                        <input type="text" class="form-control" name="harga" value=" " onkeyup="OnChange(this.value)" onKeyPress="return isNumberKey(event)" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="qty" class="col-sm-2 col-form-label">Qty</label>
                    <div class="col">
                        <input type="number" class="form-control" id="jmlpsn" name="jmlpsn" onkeyup="OnChange(this.value)" onKeyPress="return isNumberKey(event)">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="txtDisplay" class="col-sm-2 col-form-label">Total</label>
                    <div class="col">
                        <input type="number" class="form-control" id="txtDisplay" name="txtDisplay" value="txtDisplay" readonly>
                    </div>
                </div>
                <hr>
                <button type="submit" class="btn btn-success btn-lg btn-block custom-button">Pesan</button>
                <a class="btn btn-outline-warning btn-lg btn-block" href="/menu">Batal</a>
                <div class="col mt-3">
                    <p>*Pesan dulu bayar nanti.</p>
                </div>

            </form>
        </div> -->