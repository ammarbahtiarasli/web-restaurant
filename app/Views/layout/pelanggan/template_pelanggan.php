<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?= $title; ?></title>

    <!-- Bootstrap core CSS -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <!-- Tema default -->
    <!-- <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- TEMA DARK -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?= base_url(); ?>/css/business-frontpage.css" rel="stylesheet">
    <!-- my CSS --->
    <link href="<?= base_url(); ?>/css/style.css" rel="stylesheet">

    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/carousnap/carousnap@v1.4/carousnap/carousnap.css" type="text/css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>

</head>

<body>
    <script>
        AOS.init({
            easing: 'zoom-in-up',
        });
    </script>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top custom-nav shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="/admin">
                <img src="/images/logo.png" alt="AMR Logo">
                <span class="amr">AMRBHTR</span>
            </a>
            <span class="badge bg-danger text-white"></span>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Beranda
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/menu">Daftar Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pelanggan/about">Tentang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pelanggan/contact">Kontak</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pelanggan/gallery">Galeri</a>
                    </li>
                    <?php if (empty(logged_in())) { ?>
                        <li class="nav-item text-nowrap">
                            <a class="btn btn-secondary login-button" href="/login"><i class='bx bxs-door-open'></i> Masuk</a>
                        </li>
                    <?php } else { ?>
                        <div class="dropdown nav-item">
                            <button class="btn btn-secondary login-button dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bx bxs-user"></i> <?= user()->username; ?>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="/pelanggan/profile"><i class='bx bxs-user-detail'></i> PROFIL</a></li>
                                <div class="dropdown-divider"></div>
                                <?php if (in_groups('user')) : ?>
                                    <li><a class="dropdown-item" href="/menu/cart"><i class='bx bxs-basket'></i> KERANJANG SAYA</a></li>
                                    <div class="dropdown-divider"></div>
                                    <li><a class="dropdown-item" href="#"><i class='bx bxs-book'></i> HISTORI PESANAN</a></li>
                                    <div class="dropdown-divider"></div>
                                <?php endif; ?>
                                <?php if (in_groups('waiter')) : ?>
                                    <li><a class="dropdown-item" href="/menu/cart"><i class='bx bxs-basket'></i> KERANJANG SAYA</a></li>
                                    <div class="dropdown-divider"></div>
                                    <li><a class="dropdown-item" href="#"><i class='bx bxs-book'></i> HISTORI PESANAN</a></li>
                                    <div class="dropdown-divider"></div>
                                <?php endif; ?>
                                <li><a class="dropdown-item" href="/logout" onclick="return confirm('yakin akan keluar?')"><i class='bx bxs-door-open'></i> KELUAR</a></li>
                            </ul>
                        </div>
                    <?php  } ?>
                </ul>
            </div>
        </div>
    </nav>


    <!-- Page Content -->
    <?= $this->renderSection('content'); ?>
    <!-- /.container -->
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#4e5d6c" fill-opacity="1" d="M0,32L1440,288L1440,320L0,320Z"></path>
    </svg>
    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="container">
            <h3>AMRBHTR RESTAURANT</h3>
            <div class="social-links">
                <a href="https://github.com/ammarbahtiarasli/" class="github"><i class="bx bxl-github"></i></a>
                <a href="https://web.facebook.com/profile.php?id=100013569643281" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="https://www.instagram.com/ammarbahtiarasli/" class="instagram"><i class="bx bxl-instagram"></i></a>
            </div>
            <div class="copyright">
                &copy; Copyright 2021 <strong><span>AMRBHTR</span></strong>. Hak Cipta Dilindungi
            </div>
        </div>
    </footer><!-- End Footer -->
    <!-- Bootstrap core JavaScript -->
    <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
    <script src="<?= base_url(); ?>/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/carousnap/carousnap@v1.4/carousnap/carousnap.js" id="scriptCarousnap"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>

</html>