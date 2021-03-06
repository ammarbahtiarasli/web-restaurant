<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Galeri</li>
                </ol>
            </nav>



            <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">



            <!-- Bootstrap core CSS -->
            <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

            <!-- Favicons -->
            <link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
            <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
            <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
            <link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
            <link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.img" color="#7952b3">
            <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
            <meta name="theme-color" content="#7952b3">


            <style>
                .bd-placeholder-img {
                    font-size: 1.125rem;
                    text-anchor: middle;
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    user-select: none;
                }

                @media (min-width: 768px) {
                    .bd-placeholder-img-lg {
                        font-size: 3.5rem;
                    }
                }
            </style>


            </head>


            <section class="py-5 text-center container">
                <div class="row py-lg-5">
                    <div class="col-lg-6 col-md-8 mx-auto">
                        <h1 class="fw-light">Galeri Album</h1>
                        <p class="lead text-muted">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel justo suscipit, tincidunt urna eu, laoreet enim. Duis eget rutrum est. Cras interdum arcu laoreet, suscipit arcu eu, eleifend nulla.
                        </p>
                    </div>
                </div>
            </section>

            <div class="carouSnap" data-width="100%" data-height="100%" data-aos="fade">
                <div class="numbSlide"></div>
                <div class="bnSlide"></div>
                <div class="photoCollect">
                    <!-- YOUR IMAGES HERE (Maximum 10 Photos & Minimum 1 Photo) -->
                    <img src="/images/gallery1.jpg" alt="#alt-image" title="#title-image" />
                    <img src="/images/gallery2.jpg" alt="#alt-image" title="#title-image" />
                    <img src="/images/gallery3.jpg" alt="#alt-image" title="#title-image" />
                </div>
                <div class="indCat"></div>
            </div>


            <div class="album py-5">
                <div class="container">

                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 ">
                        <?php foreach ($gambar as $gambar) : ?>
                            <div class="col">
                                <div class="card shadow" data-aos="zoom-out-down">
                                    <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="/images/<?= $gambar['gambar']; ?>" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                    <title>Placeholder</title>
                                    <div class="card-body">
                                        <p class="card-text"><?= $gambar['deskripsi']; ?></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                            </div>
                                            <small class="text"><?= Date('d M Y'); ?></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>




            <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>




        </div>
    </div>
</div>
<?= $this->endSection(); ?>