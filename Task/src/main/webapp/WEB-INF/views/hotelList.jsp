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
            <div>
                <h2>All Hotels</h2>
                <table class = "table">
                    <thead>
                        <tr>
                            <th>Hotel name</th>
                            <th>Country</th>
                            <th>Rating of hotel</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="hotel" items="${hotels}">
                            <tr>
                                <td>${hotel.hotelName}</td>
                                <td>${hotel.country.name}</td>
                                <td align="center">${hotel.hotelRating}</td>
                                <td><a href="${contextPath}/updateHotel/${hotel.id}">Edit</a></td>
                                <td><a href="${contextPath}/deleteHotel/${hotel.id}">Delete</a></td>
                                <td><a href="${contextPath}/addRoom/${hotel.id}">Add room</a></td>
                                <td><a href="${contextPath}/allHotelRooms/${hotel.id}/">View all rooms</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <p><a href="<c:url value="${contextPath}/addHotel"/>">Add hotel</a></p>
            <p><a href="${contextPath}/mainMenu">Back to main menu</a></p>
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

        table {
            margin: 0 auto;
        }

        body {
            background-color: #ffffff;
            background-image: linear-gradient(315deg, #ffffff 0%, #414141 74%);
            color: antiquewhite;
        }

        a {
            display: inline-block;
            margin: 0 5px;
            color: antiquewhite;
            font-size: 1.2em;
        }
    </style>
</html>
