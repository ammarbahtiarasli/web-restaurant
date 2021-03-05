<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="/admin/menu">Menu</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tambah Menu</li>
                </ol>
            </nav>
            <h2>Form Tambah Menu</h2>
            <div class="dropdown-divider"></div>
            <div class="col-md-8 mb-3">
                <form action="/admin/save_menu" method="POST" enctype="multipart/form-data">
                    <?= csrf_field(); ?>
                    <div class="row mb-3">
                        <label for="nama_menu" class="col-sm-2 col-form-label">Nama Menu</label>
                        <div class="col-md">
                            <input type="text" class="form-control <?= ($validation->hasError('nama_menu')) ? 'is-invalid' : ''; ?>" id="nama_menu" name="nama_menu" autofocus value="<?= old('nama_menu'); ?>">
                            <div class="invalid-feedback">
                                <?= $validation->getError('nama_menu'); ?>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                        <div class="col-md">
                            <input type="number" class="form-control <?= ($validation->hasError('harga')) ? 'is-invalid' : ''; ?>" id="harga" name="harga" value="<?= old('harga'); ?>">
                            <div class="invalid-feedback">
                                <?= $validation->getError('harga'); ?>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="nama_kategori" class="col-sm-2 col-form-label">Kategori</label>
                        <div class="col-md">
                            <select class="form-select <?= ($validation->hasError('nama_kategori')) ? 'is-invalid' : ''; ?> id=" nama_kategori" name="nama_kategori" value="<?= old('nama_kategori'); ?>" aria-label=" Default select example">
                                <option selected>Pilih Kategori...</option>
                                <?php foreach ($kategori as $kategori) : ?>
                                    <option value="<?= $kategori['nama_kategori']; ?>"><?= $kategori['nama_kategori']; ?></option>
                                <?php endforeach; ?>
                            </select>
                            <div class="invalid-feedback">
                                <?= $validation->getError('nama_kategori'); ?>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="deskripsi" class="col-sm-2 col-form-label">deskripsi</label>
                        <div class="col-md">
                            <textarea type="text" class="form-control <?= ($validation->hasError('deskripsi')) ? 'is-invalid' : ''; ?>" id="deskripsi" name="deskripsi" value="<?= old('deskripsi'); ?>"></textarea>
                            <div class="invalid-feedback">
                                <?= $validation->getError('deskripsi'); ?>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="gambar" class="col-sm-2 col-form-label">Gambar</label>
                        <div class="col-md">
                            <input type="file" class="file-input <?= ($validation->hasError('gambar')) ? 'is-invalid' : ''; ?>" id="gambar" name="gambar" value="<?= old('gambar'); ?>">
                            <div class="invalid-feedback">
                                <?= $validation->getError('gambar'); ?>
                            </div>
                        </div>
                    </div>
                    <br>
                    <a class="btn btn-outline-warning" href="/admin/menu"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z" />
                        </svg> Batal</a>
                    <button type="submit" class="btn btn-primary"><i class='bx bx-save'></i> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>