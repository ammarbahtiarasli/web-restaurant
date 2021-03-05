<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-md mt-5 mb-5">
            <main class="container">
                <div class="bg-dark p-5 rounded">
                    <center>
                        <h1>Pesanan Kamu berhasil dibuat ! </h1>
                        <h2>Tunjukan kode pesanan ke kasir ketika melakukan pembayaran</h2>
                    </center>
                    <div class="card">
                        <div class="card-body">
                            <h3>Kode pesanan : <?= $id_order ?> </h3>
                        </div>
                    </div>
                    <center>
                        <br>
                        <p class="lead">Silahkan tunggu di meja yang sudah anda pilih sebelumnya, Terima kasih sudah pesan di AMRBHTR RESTAURANT:)</p>
                        <a class="btn btn-lg btn-success" href="/menu">Kembali ke daftar menu &raquo;</a>
                    </center>
                </div>
            </main>
            <br>
            <br>
            <br>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>