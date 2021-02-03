<%@ page import="ir.maktab.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/2/2021
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Employee Info Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
<%--    <h1>Welcome To Main Page</h1>--%>
<%--    <p>Employee Information Project</p>--%>
</div>
<div class="container" style="text-align: center">

    <ul class="nav nav-tabs">
        <li ><a href="wel.jsp"> <span class="glyphicon glyphicon-home btn-lg" ></span></a></li>
        <li> <a href="${pageContext.request.contextPath}/employee?action=loadEmployees " > <span class="glyphicon glyphicon-Search btn-lg"></span>  </a></li>
<%--        <li> <a href="${pageContext.request.contextPath}/employeeAction?action=delete&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>" >  <span class="glyphicon glyphicon-trash btn-lg"></span></a></li>--%>
        <li class="active"> <a href="fullInfo.jsp"> <span class="glyphicon glyphicon-user btn-lg"></span></a></li>

    </ul>

<% Employee employee=(Employee) request.getAttribute("employee");
%>

<table class="table table-bordered" style="text-align: center">
    <thead>
    <tr>
        <td>firstName</td>
        <td>lastName</td>
        <td>fatherName</td>
        <td>nationalCode</td>
        <td>email</td>
        <td>mobileNumber</td>
        <td>address</td>
    </tr>
    </thead>
    <tbody>

    <tr class="success">

        <td><%=employee.getFirstName()%></td>
        <td><%=employee.getLastName()%></td>
        <td><%=employee.getInformationEmployee().getFatherName()%></td>
        <td><%=employee.getInformationEmployee().getNationalCode()%></td>
        <td><%=employee.getEmail()%></td>
        <td><%=employee.getInformationEmployee().getMobileNumber()%></td>
        <td><%=employee.getInformationEmployee().getAddress()%></td>

    </tr>

    </tbody>
</table>
</div>
</body>
</html>
