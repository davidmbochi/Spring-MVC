<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/11/20
  Time: 11:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <h1>Customers</h1>
            <p>Add customer</p>

        </div>

    </div>
</section>
<section class="container">
    <form:form method="post" modelAttribute="newCustomer" class="form-horizontal">
        <fieldset>
            <legend>add new customer</legend>
            <div class="form-group">
                <label for="customerId" class="control-label">customer Id</label>
                <div class="col-lg-10">
                    <form:input path="customerId"/>

                </div>
                <label for="name" class="control-label">name</label>
                <div class="col-lg-10">
                    <form:input path="name" type="text"/>

                </div>
                <label for="address" class="control-label">address</label>
                <div class="col-lg-10">
                    <form:input path="address" type="text"/>

                </div>
                <label for="noOfOrdersMade" class="control-label">number of orders made</label>
                <div class="col-lg-10">
                    <form:input path="noOfOrdersMade"/>

                </div>

            </div>
            <div class="form-group">
                <div class="col-lg-2 col-offset-2">
                    <input type="submit" id="btnAdd" class="btn
                    btn-primary" value="Add">

                </div>

            </div>
        </fieldset>

    </form:form>

</section>

</body>
</html>
