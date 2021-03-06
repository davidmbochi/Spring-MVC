<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/25/20
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Order</h1>
            <p>Order Confirmation</p>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <form:form modelAttribute="order" class="form-horizontal">
            <input type="hidden" name="_flowExecutionKey"
                   value="${flowExecutionKey}"/>
            <div
                    class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <address>
                            <strong>Shipping Address</strong> <br>
                                ${order.shippingDetail.name}<br>
                                ${order.shippingDetail.shippingAddress.doorNo},
                                ${order.shippingDetail.shippingAddress.streetName}
                            <br>
                                ${order.shippingDetail.shippingAddress.areaName},
                                ${order.shippingDetail.shippingAddress.state}
                            <br>
                                ${order.shippingDetail.shippingAddress.country},
                                ${order.shippingDetail.shippingAddress.zipCode}
                            <br>
                        </address>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                        <p>
                            <em>Shipping DateDate:
                                <fmt:formatDate type="date"
                                                value="${order.shippingDetail.shippingDate}"/></em>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <address>
                            <strong>Billing Address</strong> <br>
                                ${order.customer.name}<br>
                                ${order.customer.billingAddress.doorNo},
                                ${order.customer.billingAddress.streetName}
                            <br>
                                ${order.customer.billingAddress.areaName},
                                ${order.customer.billingAddress.state}
                            <br>
                                ${order.customer.billingAddress.country},
                                ${order.customer.billingAddress.zipCode}
                            <br> <abbr>P:</abbr>
                                ${order.customer.phoneNumber}
                        </address>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="cartItem"
                                   items="${order.cart.cartItems}">
                            <tr>
                                <td class="col-md-9">
                                    <em>${cartItem.product.name}</em></td>
                                <td class="col-md-1"
                                    style="text-align: center">
                                        ${cartItem.quantity}</td>
                                <td class="col-md-1 text-center">$${cartItem.product.unitPrice}
                                </td>
                                <td class="col-md-1 text-center">$${cartItem.totalPrice}
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="text-right"><h4>
                                <strong>Grand Total:
                                </strong>
                            </h4></td>
                            <td class="text-center text-danger"><h4>
                                <strong>$${order.cart.grandTotal}
                                </strong>
                            </h4></td>
                        </tr>
                        </tbody>
                    </table>
                    <button id="back" class="btn btn-default"
                            name="_eventId_backToCollectShippingDetail">
                        back
                    </button>
                    <button type="submit" class="btn btn-success"
                            name="_eventId_orderConfirmed">
                        Confirm
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </button>
                    <button id="btnCancel" class="btn btn-default"
                            name="_eventId_cancel">Cancel
                    </button>
                </div>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>
