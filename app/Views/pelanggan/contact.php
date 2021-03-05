<?= $this->extend('layout/pelanggan/template_pelanggan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Contact Us</h1>
                <p class="lead text-muted">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel justo suscipit, tincidunt urna eu, laoreet enim. Duis eget rutrum est. Cras interdum arcu laoreet, suscipit arcu eu, eleifend nulla.
                </p>

            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            <div class="col-md-8 mb-5">
                <div class="card shadow">
                    <iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1977.7683284136049!2d108.66988175169828!3d-7.5162890006384115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6585e4b1e95d71%3A0x82f1ea6a3ee186b3!2sTOKO%20BONEKA%20A%26B%20Collection!5e0!3m2!1sid!2sid!4v1606537329932!5m2!1sid!2sid" width="700" height="640" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
            <div class="col-md-4 mb-5" data-aos="zoom-in">
                <h2>Address</h2>
                <hr>
                <address>
                    <strong>AMRBHTR Restaurant</strong>
                    <br>Jl. Raya Banjar-Pangandaran
                    <br>Sambong, Karangmulya
                    <br>Padaherang, 46384
                    <br>
                </address>
                <address>
                    <abbr title="Phone"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-telephone" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                        </svg></abbr>
                    +6285155333936 Or <a href="https://wa.me/6285155333936">Whatsapp</a>
                    <br>
                    <abbr title="Email"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z" />
                        </svg></abbr>
                    <a href="#">ammarbahtiarasli@gmail.com</a>
                </address>
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>



<?= $this->endSection(); ?>