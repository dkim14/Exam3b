

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

                   <form name="addForm" action="addCustomer" method="post">
          <table>
                <tr>
                    <td >First Name:</td>
                    <td><input type="text" name="firstName" value="" required/></td>
                </tr>

                <tr>
                    <td >Last Name:</td>
                    <td><input type="text" name="lastName" value="" required/></td>
                </tr>

                <tr>
                    <td >Address 1:</td>
                    <td><input type="text" name="addr1" value="" required/></td>
                </tr>

                <tr>
                    <td >Address 2:</td>
                    <td><input type="text" name="addr2" value=""/></td>
                </tr>

                <tr>
                    <td >City:</td>
                    <td><input type="text" name="city" value="" required/></td>
                </tr>

                <tr>
                    <td >State:</td>
                    <td><input type="text" name="state" pattern="[A-Za-z]{2}" title="Two letter only"  value="" required/></td>
                </tr>

                <tr>
                    <td >Zip Code:</td>
                    <td><input type="text" name="zip"  pattern="[0-9]{5}"  title="Five digit only" value="" required/></td>
                </tr>

                <tr>
                    <td >Email Address:</td>
                    <td><input type="text" name="emailAddr" title="ex)xxx@xxx.xxx"  value="" required/></td>
                </tr>
            </table>
                    
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />

                </form>

            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
    </body>
</html>
