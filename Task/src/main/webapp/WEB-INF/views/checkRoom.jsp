<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <h2>All Rooms</h2>
            <c:if test="${not empty errorMessage}">
                <h4><strong>${errorMessage}</strong></h4>
            </c:if>
            <table class = "table">
                <thead>
                <tr>
                    <th>Room number</th>
                    <th>Capacity</th>
                    <th>Room price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="room" items="${rooms}">
                    <tr>
                        <td align="center">${room.roomNumber}</td>
                        <td align="center">${room.capacity}</td>
                        <td align="center">${room.roomPrice}</td>
                        <td>
                            <form action="${contextPath}/findAvailableRoom/${room.id}" method="post">
                                <div>
                                    <label for="dateOfArrival">Date of arrival</label>
                                    <input type="date" name="checkIn" id="dateOfArrival" required>
                                    <p>
                                        <label for="dateOfDeparture">Date of departure</label>
                                        <input type="date" name="checkOut" id="dateOfDeparture" required>
                                    </p>
                                    <p>
                                        <input type="hidden" name="hotelId" value="${room.hotel.id}">
                                    </p>
                                    <input type="submit" value="Check the Room">

                                </div>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
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
    </style>
</html>
