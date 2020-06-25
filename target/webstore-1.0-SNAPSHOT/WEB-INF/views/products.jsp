<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/8/20
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <a href="<c:url value="/logout" />">Logout</a>
            <h1>Products</h1>
            <p>All the available products in our store</p>

        </div>

    </div>
</section>
<section class="container">
    <div class="row">
        <c:forEach items="${products}" var="product">
            <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <img src="<c:url value="/assets/${product.productId}.png"></c:url>" alt="image" style="width: 100%">
                    <div class="caption">
                        <h3>${product.name}</h3>
                        <p>${product.description}</p>
                        <p>${product.unitPrice} USD</p>
                        <p>Available ${product.unitsInStock} units in stock</p>
                        <p>
                            <a href="<spring:url value="/market/product?id=${product.productId}"/>" class="btn btn-primary">
                                <span class="glyphicon glyphicon-info-sign"></span>
                                Details
                            </a>
                        </p>

                    </div>

                </div>

            </div>

        </c:forEach>
    </div>

</section>

</body>
</html>
