<html>

<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #000000;
            text-align: center;
        }
    </style>
</head>

<body>
    <div style="font-size:64px; color:'#dddddd' "><i>Nota Pesanan</i></div>
    <p>
        <i>AMRBHTR RESTAURANT</i><br>
        Padaherang, Pangandaran<br>
        085155333936
    </p>
    <hr>
    <hr>
    <p>
        Id order : <br>
        Tanggal : <?= date('d M Y'); ?>
    </p>
    <table cellpadding="6">
        <tr>
            <th><strong>Id order</strong></th>
            <th><strong>No meja</strong></th>
            <th><strong>Nama Menu</strong></th>
            <th><strong>Qty</strong></th>
            <th><strong>Total Harga</strong></th>
        </tr>
        <?php foreach ($pesanan as $pesanan) : ?>
            <tr>
                <td><?= $pesanan['id_order']; ?></td>
                <td><?= $pesanan['no_meja']; ?></td>
                <td><?= $pesanan['nama_menu']; ?></td>
                <td><?= $pesanan['qty']; ?></td>
                <td><?= $pesanan['total']; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>