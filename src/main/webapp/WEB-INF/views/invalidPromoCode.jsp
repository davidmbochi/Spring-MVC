<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/17/20
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1 class="alert alert-danger">Invalid promo code</h1>

        </div>

    </div>
</section>
<section>
    <div class="container">
        <p>
            <a href="<spring:url value="/market/products"/>" class="btn btn-primary">
                <span class="glyphicon glyphicon-hand-left"></span>
                Products

            </a>
        </p>

    </div>
</section>

</body>
</html>
