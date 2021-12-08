<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <title>Travel Agency</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Travel Agency</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/mainMenu">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/allBookings">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/findHotelByCountry">Find hotel</a>
                    </li>
                    <li class="nav-item">
                        <form action="${contextPath}/mainMenu" method="post">
                            <button class="button-13" type="submit">Logout</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header>

        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" style="background-image: url('https://tcb.com.ua/images/15311.jpg')">
                    <div class="carousel-caption">
                        <h5>Exotics</h5>
                        <p></p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url('https://luxfon.com/pic/201308/1920x1080/luxfon.com-22243.jpg')">
                    <div class="carousel-caption">
                        <h5>Amazing Europe</h5>
                        <p></p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url('https://7themes.su/_ph/55/636272240.jpg')">
                    <div class="carousel-caption">
                        <h5>Fascinating Iceland</h5>
                        <p></p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>



        <div class="container1">
            <div class="container2">
                <a href="${contextPath}/findHotel">Find hotels</a>
                <sec:authorize access="hasAuthority('all_permissions')">
                    <a href="${contextPath}/management">Management page</a><br />
                </sec:authorize>
            </div>

<%--            <form action="${contextPath}/mainMenu" method="post">--%>
<%--                <button type="submit">Logout</button>--%>
<%--            </form>--%>
        </div>

    <!-- Remove the container if you want to extend the Footer to full width. -->
    <div class="container my-5">
        <!-- Footer -->
        <footer
                class="text-center text-lg-start text-white"
                style="background-color: #929fba"
        >
            <!-- Grid container -->
            <div class="container p-4 pb-0">
                <!-- Section: Links -->
                <section class="">
                    <!--Grid row-->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">
                                Company name
                            </h6>
                            <p>
                                Here you can use rows and columns to organize your footer
                                content. Lorem ipsum dolor sit amet, consectetur adipisicing
                                elit.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <hr class="w-100 clearfix d-md-none" />

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
                            <p>
                                <a class="text-white">MDBootstrap</a>
                            </p>
                            <p>
                                <a class="text-white">MDWordPress</a>
                            </p>
                            <p>
                                <a class="text-white">BrandFlow</a>
                            </p>
                            <p>
                                <a class="text-white">Bootstrap Angular</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <hr class="w-100 clearfix d-md-none" />

                        <!-- Grid column -->
                        <hr class="w-100 clearfix d-md-none" />

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                            <p><i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
                            <p><i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
                            <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold">Follow us</h6>

                            <!-- Facebook -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #3b5998"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-facebook-f"></i
                            ></a>

                            <!-- Twitter -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #55acee"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-twitter"></i
                            ></a>

                            <!-- Google -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #dd4b39"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-google"></i
                            ></a>

                            <!-- Instagram -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #ac2bac"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-instagram"></i
                            ></a>

                            <!-- Linkedin -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #0082ca"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-linkedin-in"></i
                            ></a>
                            <!-- Github -->
                            <a
                                    class="btn btn-primary btn-floating m-1"
                                    style="background-color: #333333"
                                    href="#!"
                                    role="button"
                            ><i class="fab fa-github"></i
                            ></a>
                        </div>
                    </div>
                    <!--Grid row-->
                </section>
                <!-- Section: Links -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div
                    class="text-center p-3"
                    style="background-color: rgba(0, 0, 0, 0.2)"
            >
                © 2020 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/"
                >MDBootstrap.com</a
                >
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </div>
    <!-- End of .container -->
    </body>


    <style>
    <%--HEADER--%>
        .button-13 {
            background-color: #fff;
            border: 1px solid #d5d9d9;
            border-radius: 8px;
            box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
            box-sizing: border-box;
            color: #495057;
            cursor: pointer;
            display: inline-block;
            font-family: "Amazon Ember",sans-serif;
            font-size: 16px;
            line-height: 29px;
            padding: 3px 7px 4px 4px;
            margin-left: 23px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            width: 100px;
        }

        .button-13:hover {
            background-color: #f7fafa;
        }

        .button-13:focus {
            border-color: #008296;
            box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
            outline: 0;
        }

        form{
            margin-block-end: 0;
        }
        /**/

        .container1 {
            display: flex;
            justify-content: center;
            flex-direction: column;
            /*margin-top: 100px;*/
            text-align: center;
        }

        .container2 {
            padding-bottom: 15px;
        }

        body {
            background-color: #ffffff;
            background-image: linear-gradient(315deg, #ffffff 0%, #414141 74%);
            color: antiquewhite;
        }


        .carousel-item {
            height: 65vh;
            min-height: 350px;
            background: no-repeat center center scroll;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</html>
