<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Transaksi</li>
                </ol>
            </nav>
            <h2>Daftar Transaksi</h2>
            <div class="dropdown-divider"></div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm mb-2">
                    </div>
                    <div class="col-sm mb-2">
                    </div>
                    <div class="col-sm mb-2">
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder="Cari data transaksi" aria-label="Search" name="keyword">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-stripped">
                    <thead>
                        <tr>
                            <th scope="col">Id Transaksi</th>
                            <th scope="col">Id Order</th>
                            <th scope="col">Id User</th>
                            <th scope="col">Total Bayar</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($transaksi as $transaksi) : ?>

                            <tr>
                                <th scope="row">T-<?= $transaksi['id_transaksi']; ?></th>
                                <td><?= $transaksi['id_order']; ?></td>
                                <td><?= $transaksi['id_user']; ?></td>
                                <td><?= "Rp. " . number_format($transaksi['total_bayar']); ?></td>
                                <td><?= $transaksi['created_at']; ?></td>
                                <td>
                                    <a class="btn btn-outline-primary" href="/admin/invoice">Cetak Nota Pembayaran</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>