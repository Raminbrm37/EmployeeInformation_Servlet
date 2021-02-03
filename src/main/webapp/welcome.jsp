<%--
  Created by IntelliJ IDEA.
  User: RaMin
  Date: 2/2/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="employee" method="post">
    <table>
        <tr>
            <td>
                FirstName
            </td>
            <td>
                <label>
                    <input name="firstName" type="text">
                </label>
            </td>
        </tr>
        <tr>
            <td>
                LastName
            </td>
            <td>
                <label>
                    <input name="lastName" type="text">
                </label>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <label>
                    <input name="email" type="email">
                </label>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Register"></td>
            <td><a href="${pageContext.request.contextPath}/employee?action=loadEmployees" > Show Employees</a> </td>
        </tr>

    </table>


</form>
</body>
</html>
