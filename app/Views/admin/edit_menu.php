<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-8 my-3">
            <h2>Form Edit Menu</h2>
            <div class="dropdown-divider"></div>
            <div class="col-md mb-3">
                <form action="/admin/updateMenu/<?= $menu['id_menu']; ?>" method="POST">
                    <?= csrf_field(); ?>
                    <div class="row mb-3">
                        <label for="nama_menu" class="col-sm-2 col-form-label">Nama Menu</label>
                        <div class="col-md">
                            <input type="text" class="form-control" id="nama_menu" name="nama_menu" autofocus value="<?= $menu['nama_menu']; ?>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                        <div class="col-md">
                            <input type="number" class="form-control" id="harga" name="harga" value="<?= $menu['harga']; ?>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="nama_kategori" class="col-sm-2 col-form-label">Kategori</label>
                        <div class="col-md">
                            <input type="text" class="form-control" id="nama_kategori" name="nama_kategori" value="<?= $menu['nama_kategori']; ?>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
                        <div class="col-md">
                            <input type="text" class="form-control" id="deskripsi" name="deskripsi" value="<?= $menu['deskripsi']; ?>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="gambar" class="col-sm-2 col-form-label">Gambar</label>
                        <div class="col-md">
                            <input type="file" class="form-control" id="gambar" name="gambar" value="<?= $menu['gambar']; ?>">
                        </div>
                    </div>
                    <a class="btn btn-warning" href="/admin/menu"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z" />
                        </svg> Kembali</a>
                    <button type="submit" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                            <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                        </svg> Ubah Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>