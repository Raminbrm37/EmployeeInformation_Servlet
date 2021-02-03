<%@ page import="ir.maktab.model.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/2/2021
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Show List Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">

</div>
<div class="container" style="text-align: center">

    <ul class="nav nav-tabs">
        <li ><a href="wel.jsp"> <span class="glyphicon glyphicon-home btn-lg" ></span></a></li>
        <li class="active"> <a href="${pageContext.request.contextPath}/employee?action=loadEmployees " > <span class="glyphicon glyphicon-Search btn-lg"></span>  </a></li>

    </ul>

    <%
List<Employee> list=(List<Employee>) session.getAttribute("employees");
%>

<table class="table table-bordered"style="text-align: center">
    <h2>Employee List</h2>
    <thead>
    <tr>
        <td>
           FirstName
        </td>
        <td>
           LastName
        </td>
        <td>
           Email
        </td>
        <td>
           Details
        </td><td>
           Update
        </td><td>
           Delete
        </td>

    </tr>
    </thead>
    <tbody>
    <%
        for (Employee employee : list) {
    %>
    <tr>

        <td><%=employee.getFirstName()   %>
        </td>
        <td><%=employee.getLastName()   %>
        </td>
        <td><%=employee.getEmail()   %>
        </td>
        <td><a href="${pageContext.request.contextPath}/employeeAction?action=details&employeeId=<%=employee.getId()%>">  <span class="glyphicon glyphicon-user"></span></a>
        <td><a href="${pageContext.request.contextPath}/employeeAction?action=update&employeeId=<%=employee.getId()%>">  <span class="glyphicon glyphicon-edit"> </span></a>
        </td>
      <td><a href="${pageContext.request.contextPath}/employeeAction?action=delete&employeeId=<%=employee.getId()%>" >  <span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <%
        }%>
    </tbody>
</table>
</div>

</body>
</html>
