<%-- 
    Document   : customerupdateform
    Created on : Apr 24, 2024, 9:56:03 PM
    Author     : User
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updatec" method="post">
            <input type="hidden" name="id" value="<c:out value="${customer.id}" />" >
            Name:
            <input type="text" value="<c:out value="${customer.name}"/>" name="name"><br>
            Email:
            <input type="text" value="<c:out value="${customer.email}"/>" name="email"><br>
            Address:
            <input type="text" value="<c:out value="${customer.address}"/>" name="address"><br>
            Mobile:
            <input type="text" value="<c:out value="${customer.mobile}"/>" name="mobile"><br>
            <button type="submit">update</button>
        </form>
    </body>
</html>
