<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About</li>
                </ol>
            </nav>
        </div>
    </div>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">About Us</h1>
                <p class="lead text-muted">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel justo suscipit, tincidunt urna eu, laoreet enim. Duis eget rutrum est. Cras interdum arcu laoreet, suscipit arcu eu, eleifend nulla.
                </p>
                <div class="container custom-about">
                    <div class="card shadow" data-aos="fade" data-aos-duration="2000">
                        <img class="img-about" src="/images/capture.png">
                    </div>
                </div>
                <div class="col mt-4">
                    <figure class="text-center">
                        <blockquote class="blockquote">
                            <p>CEO of AMRBHTR Restaurant.</p>
                        </blockquote>
                        <figcaption class="blockquote-footer">
                            Ammar bahtiar 2021
                        </figcaption>
                    </figure>
                </div>

            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>