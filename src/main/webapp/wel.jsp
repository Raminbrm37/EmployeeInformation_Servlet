<%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/3/2021
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>



<head>
    <title> Main Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
    <h1>Welcome To Main Page</h1>
    <p>Employee Information Project</p>
</div>


<div class="container" style="align-content: center">
    <ul class="nav nav-tabs">
        <li class="active"><a href="wel.jsp"> <span class="glyphicon glyphicon-home btn-lg" ></span></a></li>
        <li> <a href="${pageContext.request.contextPath}/employee?action=loadEmployees " > <span class="glyphicon glyphicon-Search btn-lg"></span>  </a></li>

    </ul>


        <h2  style="text-align: center">Employee Info</h2>


    <form class="form-horizontal" action="employee" method="post">
        <div class="form-group">
            <label class="control-label col-sm-4" for="firstName">FirstName:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="firstName" placeholder="Enter firstName" name="firstName">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="lastName">LastName:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name" name="lastName">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="email">Email:</label>
            <div class="col-sm-4">
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
            </div>
        </div>
<%--        <div class="form-group">--%>
<%--            <div class="col-sm-offset-2 col-sm-10">--%>
<%--                <div class="checkbox">--%>
<%--                    <td><a href="${pageContext.request.contextPath}/employee?action=loadEmployees" > Show Employees</a> </td>--%>
<%--&lt;%&ndash;                    <label><input type="checkbox" name="remember"> Remember me</label>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-10">
                <button type="submit" class="btn btn-primary ">Submit</button>
<%--                <a href="${pageContext.request.contextPath}/employee?action=loadEmployees" class="btn btn-success btn-lg"> <span class="glyphicon glyphicon-Search"></span> ShowEmployee </a>--%>
            </div>
        </div>
    </form>
</div>

</body>
</html>


