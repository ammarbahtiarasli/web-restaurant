<?= $this->extend('layout/admin/template_admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="/admin/pesanan">pesanan</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detail Pesanan</li>
                </ol>
            </nav>
            <h2>Detail Pesanan</h2>
            <div class="dropdown-divider"></div>
            <div class="table-responsive">
                <table class="table table-bordered table-stripped">
                    <thead>
                        <tr>
                            <th scope="col">Id order</th>
                            <th scope="col">Nama Menu</th>
                            <th scope="col">Qty</th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row"><?php echo $pesanan->id_order ?></th>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>