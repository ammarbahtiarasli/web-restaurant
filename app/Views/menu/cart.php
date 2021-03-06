<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">

    <?php echo form_open('menu/update'); ?>
    <div class="row">
        <div class="col-lg-12 mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                    <li class="breadcrumb-item"><a href="/menu">Daftar Menu</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Keranjang saya</li>
                </ol>
            </nav>
            <?php
            if (session()->getFlashdata('pesan')) {
                echo '<div class="alert alert-success alert-dismissible">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                echo session()->getFlashdata('pesan');
                echo '</div>';
            }
            ?>
        </div>

        <?php $keranjang = $cart->contents(); ?>
        <?php if (empty($keranjang)) { ?>
            <div class="col-lg-12">
                <div class="alert alert-danger alert-dismissible">Pesanan Kosong
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                </div>
                <br>
                <center>
                    <a class="btn btn-lg btn-success" href="/menu" role="button">Pilih menu Favoritmu &raquo;</a>
                </center>
            </div>
        <?php } else { ?>
            <div class="col">
                <div class="card" data-aos="fade-down">
                    <div class="card-body">
                        <h3><i class="bx bx-cart"></i>List pesanan</h3>
                        <div class="table-responsive">
                            <table class="table table-stripped table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" width="100px">qty</th>
                                        <th scope="col" width="120px">Gambar</th>
                                        <th scope="col">Menu</th>
                                        <th scope="col">Harga</th>
                                        <th scope="col">Total</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($cart->contents() as $key => $value) { ?>
                                        <tr>
                                            <th scope="row"><input type="number" min="1" name="qty<?= $i++; ?>" class="form-control" value="<?= $value['qty'] ?>"></th>
                                            <td><img width="120px" height="70px" src="<?= base_url('images/' . $value['options']['gambar']) ?>"></td>
                                            <td><?= $value['name'] ?></td>
                                            <td><?= "Rp. " . number_format($value['price']); ?></td>
                                            <td><?= $value['subtotal'] ?></td>
                                            <td><a class="btn btn-danger" href="<?= base_url('menu/delete/' . $value['rowid']) ?>">Hapus</a></td>
                                        </tr>
                                    <?php  } ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                <div class="table-responsive">
                                    <table class="table table-stripped table-bordered">
                                        <tr>
                                            <th>subtotal</th>
                                            <td><?= "Rp. " . number_format($cart->total()) ?></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <button type="submit" class="btn btn-primary">Update</button>

                                <a class="btn btn-outline-warning" href="/menu/clear">Hapus Keranjang</a>
                            </div>
                            <div class="col-6">
                                <a class="btn btn-success float-right custom-button" href="/menu/pesanan">Pesan</a>

                                <a class="float-right mr-3 mt-2" href="/menu">Kembali ke daftar menu</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php  } ?>
    </div>
    <?php form_close(); ?>
</div>
<br>
<br>
<?= $this->endSection(); ?>