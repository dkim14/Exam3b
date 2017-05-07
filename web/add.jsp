

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>

        <div class = "wrap"> <!--div to hold all other divs -->

            <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>

            <div class="main"> <!--main div-->

                <h2>Add A New Customer</h2>

                <form name="addForm" action="addCustomer" method="get">

                    <label> First Name: </label>
                    <input type="text" name="firstName" value="" size="20" />
                    <br>
                    <label> Last Type: </label>
                    <input type="text" name="lastName" value="" size="20" />
                    <br>
                    <label> Address 1 </label>
                    <input type="text" name="addr1" value="" size="20" />
                     <br>
                    <label> Address 2 </label>
                    <input type="text" name="addr2" value="" size="20" />
                     <br>
                    <label> City </label>
                    <input type="text" name="city" value="" size="20" />
                     <br>
                    <label> State </label>
                    <input type="text" name="state" value="" size="20" />
                     <br>
                    <label> Zip code </label>
                    <input type="text" name="zip" value="" size="20" />
                     <br>
                    <label> Email </label>
                    <input type="text" name="emailAddr" value="" size="20" />
                    
                    
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />

                </form>

            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
    </body>
</html>
