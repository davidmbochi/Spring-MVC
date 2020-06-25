<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/11/20
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="/webstore/resources/js/controllers.js"></script>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>

        </div>

    </div>
</section>
<section class="container" ng-app="cartApp">
    <div class="row">
        <div class="col-md-5">
            <img src="<c:url value="/assets/${product.productId}.png">

                      </c:url>" alt="image" style="width: 100%">

        </div>
        <div class="col-md-5">
            <h3>${product.name}</h3>
            <p>${product.description}</p>
            <p>
                <strong>Item Code:</strong>
                <span class="badge badge-warning">${product.productId}</span>
            </p>
            <p>
                <strong>manufacturer</strong>${product.manufacturer}
            </p>
            <p>
                <strong>category</strong>${product.category}
            </p>
            <p>
                <strong>Available units in stock</strong>${product.unitsInStock}
            </p>
            <h4>${product.unitPrice} USD</h4>
            <p ng-controller="cartCtrl">
                <a href="<spring:url value="/market/products"/>" class="btn btn-default">
                    <span class="glyphicon glyphicon-hand-left"></span>
                    back

                </a>
                <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                    <span class="glyphicon glyphicon-shopping-cart"></span>
                    Order Now
                </a>
                <a href="<spring:url value="/cart"/>" class="btn btn-default">
                    <span class="glyphicon-hand-right"></span>
                    View Cart
                </a>
            </p>

        </div>

    </div>

</section>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
