<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Satu Data "BERMASA"</title>
  <meta content="Satu Data BERMASA" name="description">
  <meta content="Satu Data" name="keywords">

  <!-- Favicons -->
  <link href="{{asset('images/favicon.png')}}" rel="icon">
  <link href="{{asset('images/favicon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('MyResume/assets/vendor/aos/aos.css')}}" rel="stylesheet">
  <link href="{{asset('MyResume/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('MyResume/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{asset('MyResume/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('MyResume/assets/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
  <link href="{{asset('MyResume/assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
  <!-- <link rel="stylesheet" href="css/owl.theme.default.css"> -->
  <!-- Template Main CSS File -->
  <link href="{{asset('MyResume/assets/css/style.css')}}" rel="stylesheet">
	@stack('css')
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
  <i class="bi bi-list mobile-nav-toggle d-lg-none"></i>
  
      <!--header-->
      @include('frontend.partials.header')
      <!--/header-->

            @yield('content')

      <!--Footer-->
      @include('frontend.partials.footer')
      <!--/footer-->


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="{{asset('MyResume/assets/vendor/purecounter/purecounter_vanilla.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/aos/aos.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/typed.js/typed.min.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/waypoints/noframework.waypoints.js')}}"></script>
<script src="{{asset('MyResume/assets/vendor/php-email-form/validate.js')}}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <!-- <script>
        $('.brand-carousel').owlCarousel({
            loop:true,
            margin:10,
            autoplay:true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }
        })
    </script> -->
<!-- Template Main JS File -->
<script src="{{asset('MyResume/assets/js/main.js')}}"></script>
<!-- <script src="{{asset('MyResume/assets/js/pagination.js')}}"></script> -->
@stack('js')
</body>
</html>