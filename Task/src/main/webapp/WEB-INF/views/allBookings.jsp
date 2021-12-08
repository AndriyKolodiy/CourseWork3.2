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
            <h2>All users and their orders </h2>
            <table class = "table">
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <th>Username</th>
                    </tr>
                    <tr>
                        <td align="center">${user.name} </td>
                    </tr>
                    <tr>
                        <th>Orders</th>
                    </tr>
                    <c:if test="${user.bookings.size() == 0}"><tr>No orders</tr></c:if>
                    <c:if test="${user.bookings.size() != 0}">
                        <c:forEach var="book" items="${user.bookings}">
                            <tr>
                                <th>Date of arrival</th>
                                <th>Date of departure</th>
                                <th>Hotel name</th>
                                <th>Room number</th>
                            </tr>
                            <tr>
                                <td align="center">${book.checkIn}</td>
                                <td align="center">${book.checkOut}</td>
                                <td align="center">${book.room.hotel.hotelName}</td>
                                <td align="center">${book.room.id}</td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <p><a href="${contextPath}/management">Back to management page</a></p>
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
