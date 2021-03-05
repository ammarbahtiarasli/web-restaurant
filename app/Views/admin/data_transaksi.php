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
    <div style="font-size:64px; color:'#dddddd' "><i>Daftar Transaksi</i></div>
    <p>
        <i>AMRBHTR RESTAURANT</i><br>
        Padaherang, Pangandaran<br>
        085155333936
    </p>
    <hr>
    <p>
        Data Transaksi : <br>
    </p>
    <table cellpadding="6">
        <tr>
            <th><strong>Id Transaksi</strong></th>
            <th><strong>Id Order</strong></th>
            <th><strong>Id User</strong></th>
            <th><strong>Total Bayar</strong></th>
            <th><strong>Tanggal</strong></th>
        </tr>
        <?php foreach ($transaksi as $transaksi) : ?>
            <tr>
                <td><?= $transaksi['id_transaksi']; ?></td>
                <td><?= $transaksi['id_order']; ?></td>
                <td><?= $transaksi['id_user']; ?></td>
                <td><?= $transaksi['total_bayar']; ?></td>
                <td><?= $transaksi['created_at']; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>