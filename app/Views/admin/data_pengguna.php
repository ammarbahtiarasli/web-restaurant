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
    <div style="font-size:64px; color:'#dddddd' "><i>Daftar Pengguna</i></div>
    <p>
        <i>AMRBHTR RESTAURANT</i><br>
        Padaherang, Pangandaran<br>
        085155333936
    </p>
    <hr>
    <p>
        Data pengguna : <br>
    </p>
    <table cellpadding="6">
        <tr>
            <th><strong>Id</strong></th>
            <th><strong>Username</strong></th>
            <th><strong>Email</strong></th>
        </tr>
        <?php foreach ($user as $user) : ?>
            <tr>
                <td><?= $user->id; ?></td>
                <td><?= $user->username; ?></td>
                <td><?= $user->email; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>