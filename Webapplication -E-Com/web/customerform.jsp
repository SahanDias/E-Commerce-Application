<%-- 
    Document   : customerform
    Created on : Apr 27, 2024, 12:24:06 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AddCustomerForm" method="post">
            Name:
            <input type="text" name="name"><br>
            Email:
            <input type="text" name="email"><br>
            Address:
            <input type="text" name="address"><br>
            Mobile:
            <input type="text" name="mobile"><br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
