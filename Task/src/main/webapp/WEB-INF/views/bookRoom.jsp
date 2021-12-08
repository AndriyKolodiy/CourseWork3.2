<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
    <head>
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
        <div class="container1">
            <h2>The room is available book now!</h2>
            <h3>Do you really want to book this room from ${arrivalDate.toString()} to ${departureTime.toString()}</h3>
            <form action="${contextPath}/findAvailableRoom/${id}/roomBooking" method="post">
                <input type="hidden" name="checkIn" value="${arrivalDate.toString()}">
                <input type="hidden" name="checkOut" value="${departureTime.toString()}">
                <input type="submit" value="Book room now">
            </form>
        </div>
    </body>

    <style>
        .container1 {
            display: flex;
            justify-content: center;
            flex-direction: column;
            margin-top: 100px;
            text-align: center;
        }

        body {
            background-color: #ffffff;
            background-image: linear-gradient(315deg, #ffffff 0%, #414141 74%);
            color: antiquewhite;
        }
    </style>
</html>