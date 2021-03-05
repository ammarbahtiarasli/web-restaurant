<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col my-4">
            <div class="container-fluid">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1>Hai
                        <?= user()->username; ?> !
                    </h1>

                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="card shadow" data-aos="fade-up">
                            <div class="card-body">
                                <h5 class="card-title">Menu | <span class="badge bg-info rounded-pill">99</span></h5>
                                <?php if (in_groups('admin')) : ?>
                                    <a href="/admin/menu" class="card-link">Data Menu &raquo;</a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card shadow" data-aos="fade-down">
                            <div class="card-body">
                                <h5 class="card-title">Pesanan | <span class="badge bg-info rounded-pill">99</span></h5>
                                <?php if (in_groups('admin')) : ?>
                                    <a href="/admin/pesanan" class="card-link">Data Pesanan &raquo;</a>
                                <?php endif; ?>
                                <?php if (in_groups('kasir')) : ?>
                                    <a href="/admin/pesanan" class="card-link">Data Pesanan &raquo;</a>
                                <?php endif; ?>
                                <?php if (in_groups('waiter')) : ?>
                                    <a href="/admin/pesanan" class="card-link">Data Pesanan &raquo;</a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card shadow" data-aos="fade-up">
                            <div class="card-body">
                                <h5 class="card-title">Laporan | <span class="badge bg-info rounded-pill">99</span></h5>
                                <?php if (in_groups('admin')) : ?>
                                    <a href="/admin/laporan" class="card-link">Data Laporan &raquo;</a>
                                <?php endif; ?>
                                <?php if (in_groups('owner')) : ?>
                                    <a href="/admin/laporan" class="card-link">Data Laporan &raquo;</a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card shadow" data-aos="fade-down">
                            <div class="card-body">
                                <h5 class="card-title">Pengguna | <span class="badge bg-info rounded-pill">99</span></h5>
                                <?php if (in_groups('admin')) : ?>
                                    <a href="/admin/pengguna" class="card-link">Data Pengguna &raquo;</a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>



                    <div class="col mt-5">
                        <h2>Pesanan</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th scope="col">Id order</th>
                                        <th scope="col">No Meja</th>
                                        <th scope="col">Tanggal</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($pesanan as $pesanan) : ?>
                                        <tr>
                                            <th scope="row"><?= $pesanan['id_order']; ?></th>
                                            <td><?= $pesanan['no_meja']; ?></td>
                                            <td><?= $pesanan['created_at']; ?></td>
                                            <td>
                                                <?php if (in_groups('admin')) : ?>
                                                    <a class="btn btn-outline-success" href="/admin/pesanan">Detail</a>
                                                <?php endif; ?>
                                                <?php if (in_groups('kasir')) : ?>
                                                    <a class="btn btn-outline-success" href="/admin/pesanan">Detail</a>
                                                <?php endif; ?>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col mt-5">
                        <h2>Transaksi</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th scope="col">Id Transaksi</th>
                                        <th scope="col">Id Order</th>
                                        <th scope="col">Id User</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($transaksi as $transaksi) : ?>
                                        <tr>
                                            <th scope="row"><?= $transaksi['id_transaksi']; ?></th>
                                            <td><?= $transaksi['id_order']; ?></td>
                                            <td><?= $transaksi['id_user']; ?></td>
                                            <td>
                                                <?php if (in_groups('admin')) : ?>
                                                    <a class="btn btn-outline-success" href="/admin/transaksi">Detail</a>
                                                <?php endif; ?>
                                                <?php if (in_groups('kasir')) : ?>
                                                    <a class="btn btn-outline-success" href="/admin/transaksi">Detail</a>
                                                <?php endif; ?>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br>

</div>
</div>
</div>
<?= $this->endSection(); ?>