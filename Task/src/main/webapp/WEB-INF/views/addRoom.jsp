<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
            <h1>Add room</h1>
            <form:form action="${contextPath}/addRoom" modelAttribute="room" method="post">
                <table>
                    <tr>
                        <td><label for="roomNumber">Room number</label></td>
                        <td><form:input path="roomNumber" type="number" id="roomNumber" placeholder="Room number" min="1" required="true"/></td>
                    </tr>
                    <tr>
                        <td><label for="capacity">Capacity</label></td>
                        <td><form:input path="capacity" type="number" id="capacity" placeholder="Capacity" required="true" min="1"/></td>
                    </tr>
                    <tr>
                        <td><label for="roomPrice">Room price</label></td>
                        <td><form:input path="roomPrice" type="number" id="roomPrice" placeholder="Room price" required="true" min="1"/></td>
                    </tr>
                    <tr>
                        <td><form:input type="hidden" path="hotel.id"/></td>
                        <td><input type="submit" value="Add room" class="subm"></td>
                    </tr>
                </table>
            </form:form>
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

        .subm {
            margin-top: 10px;
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
