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
            <h2>Find hotels in the country</h2>
            <h4>
                <c:if test="${not empty errorMessage}">
                    ${errorMessage}
                </c:if>
            </h4>

            <form action="${contextPath}/findHotel" method="get" >
                <label for="countryLabel">Country name</label>
                <select id="countryLabel" name="country" onChange="this.form.submit()">
                    <option value="" selected disabled hidden>Choose country</option>
                    <c:forEach var="item" items="${countryList}">
                        <option value="${item.name}">${item.name}</option>
                    </c:forEach>
                </select>
                <br />
            </form>

            <c:if test="${not empty hotels}">
                <table class = "table">
                    <thead>
                    <tr>
                        Here you can see all hotels in the ${hotels[0].country.name}
                    </tr>
                    <tr>
                        <th>Hotel name</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="hotel" items="${hotels}">
                        <tr>
                            <td>${hotel.hotelName}</td>
                            <td>
                                <form action="${contextPath}/allHotelRooms/${hotel.id}" method="post">
                                    <input type="submit" value="check a specific room" class="subm">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

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

        .subm {
            margin-top: 10px;
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
