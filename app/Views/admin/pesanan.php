<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Pesanan</li>
                </ol>
            </nav>
            <h2>Daftar Pesanan</h2>
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <div class="dropdown-divider"></div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm mb-2">
                    </div>
                    <div class="col-sm mb-2">
                    </div>
                    <div class="col-sm mb-2">
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder="Cari data pesanan" aria-label="Search" name="keyword">
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
                            <th scope="col">Id order</th>
                            <th scope="col">Nama User</th>
                            <th scope="col">No Meja</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php foreach ($pesanan as $pesanan) : ?>
                            <tr>
                                <th scope="row"><?= $pesanan['id_order']; ?></th>
                                <td><?= $pesanan['nama_user']; ?></td>
                                <td><?= $pesanan['no_meja']; ?></td>
                                <td><?= $pesanan['created_at']; ?></td>
                                <td>
                                    <a class="btn btn-outline-primary float-left mr-2" href="/admin/detail_pesanan/<?= $pesanan['id_order']; ?>">Detail</a>
                                    <form action="/admin/getTransaksi/<?= $pesanan['id_order']; ?>" method="POST">
                                        <?= csrf_field(); ?>
                                        <input type="hidden" name="id_order" id="id_order" value="<?= $pesanan['id_order']; ?>">
                                        <input type="hidden" name="nama_user" id="nama_user" value="<?= $pesanan['nama_user']; ?>">
                                        <button type="submit" class="btn btn-success">Selesai</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <?= $pager->links('pesanan', 'pesanan_pagination'); ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>