<%-- 
    Document   : login
    Created on : May 7, 2017, 4:14:49 PM
    Author     : Dowan Kim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log-in Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div class = "wrap">
           <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>
        <h1>!AUTHORIZED PERSON ONLY!</h1>
        <ul>
            <li> <a href = "index.jsp"> Customer </a></li>
            <li> <a href = "read"> Authorized User</a></li>
        </ul>
        
         <%@ include file = "includes/footer.jsp" %>
         </div>
    </body>
</html>
