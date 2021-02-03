<%@ page import="ir.maktab.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/3/2021
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Update Employee</title>
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
      <li><a href="${pageContext.request.contextPath}/employeeAction?action=details&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>">  <span class="glyphicon glyphicon-user btn-lg"></span></a></li>
        <li> <a href="${pageContext.request.contextPath}/employeeAction?action=delete&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>" >  <span class="glyphicon glyphicon-trash btn-lg"></span></a></li>
        <li class="active"> <a href="updateEmployee.jsp">  <span class="glyphicon glyphicon-edit btn-lg"> </span></a></li>

    </ul>
    <form class="form-horizontal" action="updateEmployee" method="post">
        <div class="form-group">
            <label class="control-label col-sm-4" for="firstName">FirstName:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="firstName" value="<%=((Employee)request.getAttribute("employee")).getFirstName()%>" name="firstName">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="lastName">LastName:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="lastName" value="<%=((Employee)request.getAttribute("employee")).getLastName()%>" name="lastName">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="email">Email:</label>
            <div class="col-sm-4">
                <input type="email" class="form-control" id="email" value="<%=((Employee)request.getAttribute("employee")).getEmail()%>" name="email">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-10">
                <button type="submit" class="btn btn-primary ">Submit</button>
                <input type="hidden" value="<%=((Employee)request.getAttribute("employee")).getId()%>" name="employeeId">
                <input type="hidden" value="edit" name="action">
            </div>
        </div>
    </form>
</div>

<%--<form method="post" action="updateEmployee">--%>
<%--    <table>--%>
<%--        <tr style="color: aqua">--%>

<%--            <td>FirstName</td>--%>
<%--            <td>LastName</td>--%>
<%--            <td>Email</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>

<%--            <td><input name="firstName" value="<%=((Employee)request.getAttribute("employee")).getFirstName()%>"></td>--%>
<%--            <td><input name="lastName" value="<%=((Employee)request.getAttribute("employee")).getLastName()%>"></td>--%>
<%--            <td><input name="email" value="<%=((Employee)request.getAttribute("employee")).getEmail()%>"></td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--    <input type="hidden" value="<%=((Employee)request.getAttribute("employee")).getId()%>" name="employeeId">--%>
<%--    <input type="hidden" value="edit" name="action">--%>
<%--    <input type="submit" value="Update Employee ">--%>
<%--</form>--%>


</body>
</html>
