@extends("body")
@section("content")

    <!--HERO HEADER
        ================================================================================================================
        ================================================================================================================
        -->
    <header id="ts-hero" class="ts-height--100vh ts-has-overlay text-white">

        <div class="container">

            <h1 data-animate="ts-reveal">
                    <span class="wrapper">
                        <span>I 'm</span>
                    </span>
                <br>
                <span class="wrapper">
                        <span data-ts-delay=".05s">Ahmed Darwish</span>
                    </span>
            </h1>

            <h4 class="mb-0" data-animate="ts-fadeInUp" data-ts-delay=".1s">Senior Android Developer at Awfar
                Market</h4>

        </div>

        <div class="ts-background" data-bg-parallax="scroll" data-bg-parallax-speed="3">
            <div id="ts-particles" class="ts-background-image ts-parallax-element ts-z-index__1"></div>
            <div class="ts-img-into-bg ts-background-image ts-parallax-element">
                <video autoplay height="100%" muted>
                    {{--                    <source src="assets/video/Working-Space.mp4" type="video/mp4">--}}
                    <source src="assets/video/bg.mp4" type="video/mp4">
                </video>
            </div>
        </div>

    </header>

    <!--MAIN CONTENT
    ================================================================================================================
    ================================================================================================================
    -->
    <!--end #content-->


    <main id="ts-content">

        <!--Blockquote
        ============================================================================================================
        -->
        <section id="blockquote" class="ts-block">
            <div class="container">

                <blockquote class="blockquote">
                    <h2> Loves stepping out of the comfort zone once in a while to improve, face new challenges, or just
                        try new things.</h2>
                    <footer class="blockquote-footer">Development is live</footer>
                </blockquote>

            </div>
        </section>

        <!--Works
        ============================================================================================================
        -->
        <section id="works">
            <div class="container-fluid px-0">

                <div class="row no-gutters ts-gallery">


                    @isset($projects)
                        @if(count($projects)>0)
                            @foreach($projects as $item)
                                <div class="col-md-6 col-lg-4">
                                    <a href="storage/{{$item->image}}"
                                       class="card ts-gallery__item ts-floated-description popup-image"
                                       data-animate="ts-fadeInUp">
                                        <div class="ts-gallery__item-description">
                                            <h5>{{$item->title}}</h5>
                                            <h3>{{$item->type}}</h3>
                                        </div>
                                        <div class="ts-background ts-img-into-bg">
                                            <img src="storage/{{$item->image}}" alt="">
                                        </div>
                                    </a>
                                </div>

                            @endforeach
                        @endif
                    @endisset

                </div>
            </div>
        </section>

        <!--Features
        ============================================================================================================
        -->
        <section id="features" class="ts-block text-white text-center text-sm-left">
            <div class="container">
                <div class="row">

                    <div class="col-md-4">
                        <div class="ts-feature">
                            <img src="assets/img/icon__dashboard.png" alt="" class="mb-5">
                            <h4>Less Coding, More Fun</h4>
                            <p>Pellentesque vitae massa vel neque rhoncus posuere</p>
                        </div>
                    </div>
                    <!--end Feature-->

                    <div class="col-md-4">
                        <div class="ts-feature">
                            <img src="assets/img/icon__user.png" alt="" class="mb-5">
                            <h4>Know Your User</h4>
                            <p>Donec finibus a quam vel scelerisque. Donec varius</p>
                        </div>
                    </div>
                    <!--end Feature-->

                    <div class="col-md-4">
                        <div class="ts-feature">
                            <img src="assets/img/icon__envelope.png" alt="" class="mb-5">
                            <h4>Target The Audience</h4>
                            <p> Vestibulum scelerisque quam vitae arcu euismod, sit</p>
                        </div>
                    </div>
                    <!--end Feature-->

                </div>
            </div>

            <div class="ts-background ts-bg-black">
                <div class="ts-background-image ts-background-repeat ts-opacity__10 ts-img-into-bg">
                    <img src="assets/img/bg__pattern--topo-white.png" alt="">
                </div>
            </div>
        </section>

        <!--Partners
        ============================================================================================================
        -->
        <section id="partners" class="py-5" data-bg-color="#fafafa">
            <div class="container py-5">
                <div class="d-block d-md-flex justify-content-around align-items-center text-center ts-partners">

                    <a href="#">
                        <img src="assets/img/logo-01.png" alt="">
                    </a>
                    <a href="#">
                        <img src="assets/img/logo-02.png" alt="">
                    </a>
                    <a href="#">
                        <img src="assets/img/logo-03.png" alt="">
                    </a>

                </div>
            </div>
        </section>

        <!--Skills
        ============================================================================================================
        -->
        <section id="my-skills" class="ts-block">
            <div class="container">

                <div class="ts-title">
                    <h2>Our Skills</h2>
                </div>

                <div class="row">

                    <div class="col-md-6 mb-4">
                        <p>
                            Fusce pretium dui quis est pretium lobortis. Vestibulum eu ex sed nibh condimentum tristique
                            eu finibus lorem. Nullam sed eleifend massa. Morbi nulla turpis, pharetra et nisl eu,
                            pellentesque molestie erat
                        </p>
                        <a href="contact__default.html" class="ts-link ts-underline">Contact Us</a>
                    </div>
                    <!--end Paragraph-->

                    <div class="col-md-6">

                        @isset($skills)
                            @if(count($skills)>0)
                                @foreach($skills  as $item)
                                    <div class="progress" data-progress-width="100%">
                                        <h5 class="ts-progress-title">{{$item->title}}</h5>
                                        <figure class="ts-progress-value"></figure>
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                    </div>
                                @endforeach
                            @endif
                        @endisset


                    </div>
                </div>
                <!--end .row-->
            </div>
            <!--end .container-->
        </section>

        <!--Call to action
        ============================================================================================================
        -->
        <section class="py-5 ts-bg-black text-white text-center text-md-left">
            <div class="container py-0 py-sm-0 my-5">
                <div class="row ts-align__vertical">

                    <div class="col-md-6 mb-3 mb-md-0">
                        <h2>Do You Love What You See?</h2>
                    </div>

                    <div class="col-md-6">
                        <a href="#" class="btn btn-outline-light float-md-right">Contact Us</a>
                    </div>

                </div>
            </div>
        </section>

        <!--Promo numbers
        ============================================================================================================
        -->
        <section class="ts-block ts-background-repeat" data-bg-image="assets/img/bg__pattern--dot.png">
            <div class="container ts-promo-numbers">
                <div class="row">

                    <div class="col-sm-6 col-md-3">
                        <div class="ts-promo-number text-center">
                            <figure class="odometer" data-odometer-final="14">0</figure>
                            <h5>Programing language</h5>
                        </div>
                    </div>
                    <!--end Promo number-->

                    <div class="col-sm-6 col-md-3">
                        <div class="ts-promo-number text-center">
                            <figure class="odometer" data-odometer-final="{{count($projects)}}">0</figure>
                            <h5>Projects</h5>
                        </div>
                    </div>
                    <!--end Promo number-->

                    <div class="col-sm-6 col-md-3">
                        <div class="ts-promo-number text-center">
                            <figure class="odometer" data-odometer-final="3">0</figure>
                            <h5>certification</h5>
                        </div>
                    </div>
                    <!--end Promo number-->

                    <div class="col-sm-6 col-md-3">
                        <div class="ts-promo-number text-center">
                            <figure class="odometer" data-odometer-final="3">0</figure>
                            <h5>Years Experience</h5>
                        </div>
                    </div>
                    <!--end Promo number-->

                </div>
            </div>
        </section>

        <!--Our Experience
        ============================================================================================================
        -->
        <section class="ts-block">
            <div class="container">

                <div class="ts-title">
                    <h2>Our Experience</h2>
                </div>

                <div class="row">

                    <div class="col-md-4 mb-5">
                        <img src="assets/img/img__plant.jpg" class="w-100" alt="">
                    </div>

                    <div class="col-md-6">
                        <ul class="list list-text list-dashed">

                            @isset($experiance)
                                @if(count($experiance)>0)
                                    @foreach($experiance as $item)
                                        <li data-animate="ts-fadeInRight">
                                            <h5 class="opacity-30"><strong>{{$item->start}} - {{$item->end}}</strong>
                                            </h5>
                                            <h4>{{$item->title}}</h4>
                                            <p>
                                                {{
                                                $item->description
                                                }}
                                            </p>
                                        </li>

                                @endforeach
                            @endif
                        @endisset


                        <!--end Experience block-->

                        </ul>
                    </div>

                </div>
            </div>
        </section>

        <!--Blog
        ============================================================================================================
        -->
        <section class="ts-block pt-0">
            <div class="container">

                <div class="ts-title">
                    <h2>From The Blog</h2>
                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="ts-blog-thumb">
                            <a href="blog__detail.html" class="ts-blog-image ts-background">
                                <div class="ts-background-image ts-img-into-bg">
                                    <img src="assets/img/img__blog__thumb--01.jpg" alt="">
                                </div>
                            </a>
                            <h6>02-05-2019</h6>
                            <h4>
                                <a href="blog__detail.html">10 best design books</a>
                            </h4>
                            <p>
                                Fusce pretium dui quis est pretium lobortis. Vestibulum eu ex sed nibh condimentum
                                tristique eu finibus lorem.
                            </p>
                            <footer>
                                <a href="#" class="mr-3">
                                    <i class="fa fa-comment"></i>
                                    20
                                </a>
                                <a href="#">
                                    <i class="fa fa-heart"></i>
                                    46
                                </a>
                            </footer>
                        </div>
                    </div>
                    <!--end Blog post thumbnail-->

                    <div class="col-md-4">
                        <div class="ts-blog-thumb">
                            <a href="blog__detail.html" class="ts-blog-image">
                                <div class="ts-background-image ts-img-into-bg">
                                    <img src="assets/img/img__blog__thumb--02.jpg" alt="">
                                </div>
                            </a>
                            <h6>24-04-2019</h6>
                            <h4>
                                <a href="blog__detail.html">How to be more creative</a>
                            </h4>
                            <p>
                                Quis est pretium lobortis. Vestibulum eu ex sed nibh condimentum tristique eu finibus
                                lorem. Nullam sed eleifend massa.
                            </p>
                            <footer>
                                <a href="#" class="mr-3">
                                    <i class="fa fa-comment"></i>
                                    42
                                </a>
                                <a href="#">
                                    <i class="fa fa-heart"></i>
                                    38
                                </a>
                            </footer>
                        </div>
                    </div>
                    <!--end Blog post thumbnail-->

                    <div class="col-md-4">
                        <div class="ts-blog-thumb">
                            <a href="blog__detail.html" class="ts-blog-image">
                                <div class="ts-background-image ts-img-into-bg">
                                    <img src="assets/img/img__blog__thumb--03.jpg" alt="">
                                </div>
                            </a>
                            <h6>17-04-2019</h6>
                            <h4>
                                <a href="blog__detail.html">Start your day well!</a>
                            </h4>
                            <p>
                                Vestibulum eu ex sed nibh condimentum tristique eu finibus lorem. Nullam sed eleifend
                                massa. Morbi nulla turpis
                            </p>
                            <footer>
                                <a href="#" class="mr-3">
                                    <i class="fa fa-comment"></i>
                                    18
                                </a>
                                <a href="#">
                                    <i class="fa fa-heart"></i>
                                    51
                                </a>
                            </footer>
                        </div>
                    </div>
                    <!--end Blog post thumbnail-->

                </div>

            </div>
        </section>

    </main>

@endsection
