<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/25/20
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
            <h1>Customer</h1>
            <p>Customer detail</p>

        </div>

    </div>
</section>
<section class="container">
    <form:form modelAttribute="order.customer" class="form-horizontal">
        <fieldset>
            <legend>Customer Details</legend>
            <div class="form-group">
                <label class="control-label col-lg-2" for="name">Name</label>
                <div class="col-lg-10">
                    <form:input id="name" path="name" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="doorNo">Door No</label>
                <div class="col-lg-10">
                    <form:input id="doorNo" path="billingAddress.doorNo" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="streetName">Street Name</label>
                <div class="col-lg-10">
                    <form:input id="streetName" path="billingAddress.streetName." type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="areaName">Area Name</label>
                <div class="col-lg-10">
                    <form:input id="areaName" path="billingAddress.areaName" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="state">State</label>
                <div class="col-lg-10">
                    <form:input id="state" path="billingAddress.state" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="country">country</label>
                <div class="col-lg-10">
                    <form:input id="country" path="billingAddress.country" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="zipCode">Zip Code</label>
                <div class="col-lg-10">
                    <form:input id="zipCode" path="billingAddress.zipCode" type="text" class="form:input-large"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="phoneNumber">Phone Number</label>
                <div class="col-lg-10">
                    <form:input id="phoneNumber" path="phoneNumber" type="text" class="form:input-large"/>
                </div>
            </div>
            <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value="Add" name="_eventId_customerInfoCollected"/>
                    <button id="btnCancel" class="btn btn-default" name="_eventId_cancel">Cancel
                    </button>
                </div>
            </div>
        </fieldset>
    </form:form>
</section>
</body>
</html>
