<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/11/20
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <div class="pull-right" style="padding-right: 50px">
        <a href="?language=en">English</a>|<a href="?language=n1">
        Dutch
    </a>
    <a href="<c:url value="/logout"/> ">Logout</a>
    </div>
</section>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>
            <p>Add products</p>

        </div>

    </div>
</section>
<section class="container">
    <form:form method="post" modelAttribute="newProduct" class="form-horizontal" enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
        <fieldset>
            <legend>Add new product</legend>
            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"
                for="productId"><spring:message code="addProduct.form.productId.label"/></label>
                <div class="col-lg-10">
                    <form:input id="productId" path="productId"
                    type="text" class="form:input-large"/>
                    <form:errors path="productId" cssClass="text-danger"/>

                </div>
                <label class="control-label col-lg-2 col-lg-2"
                       for="name"><spring:message code="addProduct.form.name.label"/> </label>
                <div class="col-lg-10">
                    <form:input id="name" path="name"
                                type="text" class="form:input-large"/>
                    <form:errors path="name" cssClass="text-danger"/>

                </div>
                <label class="control-label col-lg-2 col-lg-2"
                       for="unitPrice"><spring:message code="addProduct.form.unitPrice.label"/> </label>
                <div class="col-lg-10">
                    <form:input id="unitPrice" path="unitPrice"
                                type="text" class="form:input-large"/>
                    <form:errors path="unitPrice" cssClass="text-danger"/>

                </div>
                <label class="control-label col-lg-2 col-lg-2"
                       for="manufacturer"><spring:message code="addProduct.form.manufacturer.label"/> </label>
                <div class="col-lg-10">
                    <form:input id="manufacturer" path="manufacturer"
                                type="text" class="form:input-large"/>

                </div>
                <label class="control-label col-lg-2 col-lg-2"
                       for="category"><spring:message code="addProduct.form.category.label"/> </label>
                <div class="col-lg-10">
                    <form:input id="category" path="category"
                                type="text" class="form:input-large"/>

                </div>
                <label class="control-label col-lg-2 col-lg-2"
                       for="unitsInStock"><spring:message code="addProduct.form.unitsInStock.label"/> </label>
                <div class="col-lg-10">
                    <form:input id="unitsInSock" path="unitsInStock"
                                type="text" class="form:input-large"/>

                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-2"
                       for="description"><spring:message code="addProduct.form.description.label"/> </label>
                <div class="col-lg-10">
                    <form:textarea path="description" id="description"
                    rows="2"/>

                </div>

            </div>
            <div class="form-group">
                <label class="control-label col-lg-2"
                       for="condition"><spring:message code="addProduct.form.condition.label"/> </label>
                <div class="col-lg-10">
                    <form:radiobutton path="condition" id="condition" value="New"/>New
                    <form:radiobutton path="condition" id="condition" value="Old"/>Old
                    <form:radiobutton path="condition" id="condition" value="Refurbished"/>Refurbished


                </div>

            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="productImage">
                    <spring:message code="addProduct.form.productImage.label"/>
                </label>
                <div class="col-lg-10">
                    <form:input path="productImage" id="productImage"
                    type="file" class="form:input-large"/>
                </div>

            </div>
            <div class="form-group">
                <label class="control-label col-lg-2" for="productManual">
                    <spring:message code="addProduct.form.productManual.label"/>
                </label>
                <div class="col-lg-10">
                    <form:input path="productManual" id="productManual"
                    type="file" class="form:input-large"/>

                </div>

            </div>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn
                    btn-primary" value="Add">

                </div>

            </div>

        </fieldset>

    </form:form>

</section>

</body>
</html>
