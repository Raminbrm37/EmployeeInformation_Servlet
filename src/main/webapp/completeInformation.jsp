<%@ page import="ir.maktab.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/2/2021
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Complete Info</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<div class="jumbotron text-center">
    <h1> <%=((Employee)request.getAttribute("employee")).getFirstName() %> PLz Insert Details</h1>
</div>

<div class="container" style="align-content: center">
    <ul class="nav nav-tabs">
        <li ><a href="wel.jsp"> <span class="glyphicon glyphicon-home btn-lg" ></span></a></li>
        <li> <a href="${pageContext.request.contextPath}/employee?action=loadEmployees " > <span class="glyphicon glyphicon-Search btn-lg"></span>  </a></li>
        <li> <a href="${pageContext.request.contextPath}/employeeAction?action=delete&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>" >  <span class="glyphicon glyphicon-trash btn-lg"></span></a></li>
        <li class="active"> <a href="${pageContext.request.contextPath}/employeeAction?action=completeInformation&employeeId=<%=((Employee)request.getAttribute("employee")).getId()%>"> <span class="glyphicon glyphicon-user btn-lg"></span></a></li>
<%--        <li class="active"> <a href="notFoundDetail.jsp">  <span class="glyphicon glyphicon-ban-circle btn-lg"></span></a></li>--%>

    </ul>
<%--<form action="employeeAction" method="post">--%>
<%--    National code: <input type="text" name="nationalCode"><br>--%>
<%--    Father name: <input type="text" name="fatherName"><br>--%>
<%--    Mobile number: <input type="text" name="mobileNumber"><br>--%>
<%--    Address: <input type="text" name="address"><br>--%>
<%--    <input type="submit" value="Update Details ">--%>
<%--    &lt;%&ndash;    <input type="submit" value="register" name="register">  <input><br>&ndash;%&gt;--%>


<%--</form>--%>

    <form class="form-horizontal" action="employeeAction" method="post">
        <div class="form-group">
            <label class="control-label col-sm-4" for="nationalCode"> National code:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="nationalCode" placeholder="Enter  National code" name="nationalCode">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="fatherName">  Father name:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="fatherName" placeholder="Enter Father name" name="fatherName">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="mobileNumber">Mobile number:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="mobileNumber" placeholder="Enter Mobile number" name="mobileNumber">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="address">Address:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-10">
                <button type="submit" class="btn btn-primary ">Update</button>
                <input hidden  value="<%=((Employee)request.getAttribute("employee")).getId()%>" name="employeeId">
                <input type="hidden" value="sendDetails" name="action">
                <%--                <a href="${pageContext.request.contextPath}/employee?action=loadEmployees" class="btn btn-success btn-lg"> <span class="glyphicon glyphicon-Search"></span> ShowEmployee </a>--%>
            </div>
        </div>
    </form>
</div>
</body>
</html>
