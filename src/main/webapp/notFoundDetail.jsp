<%@ page import="ir.maktab.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/2/2021
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Error Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center" style="color: red">
    <h1>Not Found Details For <%=((Employee)request.getAttribute("employee")).getFirstName()%> </h1>
    <p>PLz insert more Information</p>


<div class="container" style="align-content: center">
    <ul class="nav nav-tabs">
        <li ><a href="wel.jsp"> <span class="glyphicon glyphicon-home btn-lg" ></span></a></li>
        <li> <a href="${pageContext.request.contextPath}/employee?action=loadEmployees " > <span class="glyphicon glyphicon-Search btn-lg"></span>  </a></li>
        <li > <a href="${pageContext.request.contextPath}/employeeAction?action=completeInformation&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>"> <span class="glyphicon glyphicon-user btn-lg"></span></a></li>
        <li class="active"> <a href="notFoundDetail.jsp">  <span class="glyphicon glyphicon-ban-circle btn-lg"></span></a></li>

    </ul>



</div>
</div>

</body>
</html>
