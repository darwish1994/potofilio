<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="ThemeStarz">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,600">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/odometer-theme-default.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <title>Ahmed Darwish</title>

</head>
<body class="has-loading-screen">

<div class="ts-page-wrapper">
    <!--Brand Navigation
    ====================================================================================================================
    -->
    <div id="brand-navigation">

        <div class="container">

            <div id="brand">
                <button class="navbar-toggler d-block d-xl-none" type="button">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#">
                    <h3 style="color: white">Home</h3>
                    {{--                    <img src="assets/img/brand-light.png" alt="brand" class="mw-100">--}}
                </a>
            </div>
        </div>

    </div>

    <!--Main Left Navigation
    ====================================================================================================================
    -->
    <div id="main-navigation">
        <nav class="navbar navbar-dark">
            <ul class="navbar-nav">

                <!--Home
                ========================================================================================================
                -->
                <li class="nav-item">
                    <a class="nav-link active" href="#collapse__home" data-toggle="collapse" role="button">Home</a>
                    <div class="collapse" id="collapse__home">
                        <ul class="nav flex-column">

                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Creative</a>
                            </li>
                            {{--                            <li class="nav-item">--}}
                            {{--                                <a class="nav-link" href="index__app.html">App</a>--}}
                            {{--                            </li>--}}
                            {{--                            <li class="nav-item">--}}
                            {{--                                <a class="nav-link" href="index__freelancer.html">Freelancer</a>--}}
                            {{--                            </li>--}}
                            <li class="nav-item">
                                <a class="nav-link" href="{{url("portfolio")}}">Portfolio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="index__slider.html">Slider</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="index__video.html">Video</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <!--About us
                ========================================================================================================
                -->
                <li class="nav-item">
                    <a class="nav-link" href="#collapse__about" data-toggle="collapse" role="button">About</a>
                    <div class="collapse" id="collapse__about">
                        <ul class="nav flex-column">

                            <li class="nav-item">
                                <a class="nav-link" href="about__default.html">Default</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about__freelancer.html">Freelancer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about__minimal.html">Minimal</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <!--Portfolio
                ========================================================================================================
                -->
                <li class="nav-item">
                    <a class="nav-link" href="#collapse-portfolio" data-toggle="collapse" role="button">Portfolio</a>
                    <div class="collapse" id="collapse-portfolio">
                        <ul class="nav flex-column">

                            <!--Single-->

                            <li class="nav-item">
                                <a class="nav-link" href="#collapse__portfolio--detail" data-toggle="collapse"
                                   role="button">Detail</a>
                                <div class="collapse" id="collapse__portfolio--detail">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__detail--default.html">Default</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__detail--slider.html">Slider</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__detail--minimal.html">Minimal</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__detail--case-study.html">Case Study</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__detail--vertical.html">Vertical</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <!--Columns-->

                            <li class="nav-item">
                                <a class="nav-link" href="#collapse__portfolio--columns" data-toggle="collapse"
                                   role="button">Columns</a>
                                <div class="collapse" id="collapse__portfolio--columns">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--2.html">2 Columns</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--3.html">3 Columns</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--4.html">4 Columns</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--2--full-width.html">Full Width
                                                2 Columns</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--3--full-width.html">Full Width
                                                3 Columns</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="portfolio__columns--4--full-width.html">Full Width
                                                4 Columns</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <!--Masonry-->

                            <li class="nav-item">
                                <a class="nav-link" href="portfolio__masonry.html">Masonry</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <!--Blog
                ========================================================================================================
                -->
                <li class="nav-item">
                    <a class="nav-link" href="#collapse__blog" data-toggle="collapse" role="button">Blog</a>
                    <div class="collapse" id="collapse__blog">
                        <ul class="nav flex-column">

                            <li class="nav-item">
                                <a class="nav-link active" href="blog__list.html">Listing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="blog__detail.html">Post Detail</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <!--Contact
                ========================================================================================================
                -->
                <li class="nav-item">
                    <a class="nav-link" href="#collapse__contact" data-toggle="collapse" role="button">Contact</a>
                    <div class="collapse" id="collapse__contact">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="contact__default.html">Default</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact__left-map.html">Left Map</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact__minimal.html">Minimal</a>
                            </li>
                        </ul>
                    </div>
                </li>

            </ul>
        </nav>
    </div>

    <!--Content
    ====================================================================================================================
    -->
    <div class="ts-content">

    @yield("content")


    <!--FOOTER
        ================================================================================================================
        ================================================================================================================
        -->
        <footer id="ts-footer">
            <section id="ts-footer-main">
                <div class="container">

                    <div class="ts-title">
                        <h2>About Us</h2>
                    </div>

                    <div class="row">

                        <div class="col-md-5">
                            <p>
                                Fusce pretium dui quis est pretium lobortis. Vestibulum eu ex sed nibh condimentum
                                tristique eu finibus lorem. Nullam sed eleifend massa. Morbi nulla turpis, pharetra et
                                nisl eu, pellentesque molestie erat
                            </p>
                            <a href="#" class="ts-link ts-underline mb-5 mb-md-0 d-inline-block">More About Us</a>
                        </div>

                        <div class="col-sm-6 col-md-4">
                            <address class="ts-text-muted---white">
                                1565 Broadcast Drive
                                <br>
                                Dulles, VA 20166
                                <br>
                                <br>
                                <strong>Tel:</strong> +1 703-996-1212
                                <br>
                                <strong>Email:</strong> <a href="#">hello@example.com</a>
                                <br>
                                <strong>Skype:</strong> <a href="#">wearepreus</a>
                                <br>
                            </address>
                        </div>

                        <div class="col-sm-6 col-md-3">
                            <nav class="nav flex-column">
                                <a class="nav-link" href="#">Home</a>
                                <a class="nav-link" href="#">About us</a>
                                <a class="nav-link" href="#">Portfolio</a>
                                <a class="nav-link" href="#">Services</a>
                                <a class="nav-link" href="#">Contact</a>
                            </nav>
                        </div>

                    </div>
                </div>
            </section>

            <section>
                <div class="container py-5">
                    <small>© 2019 All Rights Reserved</small>
                </div>
            </section>

        </footer>
        <!--end #footer-->

    </div>
    <!--end page-->

</div>

<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/isInViewport.jquery.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/scrolla.jquery.min.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/jquery-validate.bootstrap-tooltip.min.js"></script>
<script src="assets/js/odometer.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/particles.min.js"></script>
<script src="assets/js/custom.js"></script>

</body>
</html>
