<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 6/9/20
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
<div class="container">
          <table class="table">
                  <thead class="thead-dark">
                      <tr>
                          <th>name</th>
                          <th>address</th>
                          <th>Orders Made</th>
                      </tr>
                  </thead>
              <c:forEach items="${customers}" var="customer">
                <tbody>
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.address}</td>
                    <td>${customer.noOfOrdersMade}</td>
                </tr>
                </tbody>
              </c:forEach>
          </table>

</div>

</body>
</html>
