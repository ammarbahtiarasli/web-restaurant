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
            <div class="row">
                <div class="col-8 mt-2">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-stripped">
                                    <thead>
                                        <th scope="col">ID Transaksi</th>
                                        <th scope="col">Nama User</th>
                                        <th scope="col">Id order</th>
                                        <th scope="col">Total Bayar</th>
                                    </thead>
                                    <tbody>
                                        <td>tes</td>
                                        <td>tes</td>
                                        <td>tes</td>
                                        <td>tes</td>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 mt-2">
                    <div class="card">
                        <div class="card-body">
                            <label for="nama lengkap" class="form-label">Total :</label>
                            <h3>100.000</h3>
                            <label for="nama lengkap" class="form-label">Kembali :</label>
                            <h3>0</h3>
                            <hr>
                            <input type="number" class="form-control" id="nama_kategori" name="nama_kategori" autofocus>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="col-6 float-right">

                                <a class="btn btn-success  btn-block mt-1">Cetak Nota</a>
                            </div>
                            <div class="col-6 float-left">
                                <a class="btn btn-primary  btn-block mt-1">Selesai</a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>