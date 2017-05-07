<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Favorite Customers</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>

    <% String table = (String) request.getAttribute("table");%>

    <body>
        <div class = "wrap"> <!--div to hold all other divs -->

            <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>

            <div class="main"> <!--main div-->

              
                    
                    <%= table %>
                
               
                <br><br>

                <a href ="add"> Add A New Customer </a>

                <br><br>
                <a href ="search.jsp"> Search Customers </a>



            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
    </body>
</html>
