

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

                    <label> First Name: </label>
                    <input type="text" name="firstName" value="" required />
                    <br>
                    <label> Last Name: </label>
                    <input type="text" name="lastName" value=""  required />
                    <br>
                    <label> Address 1 </label>
                    <input type="text" name="addr1" value=""  required />
                     <br>
                    <label> Address 2 </label>
                    <input type="text" name="addr2" value="" />
                     <br>
                    <label> City </label>
                    <input type="text" name="city" value=""  required/>
                     <br>
                    <label> State </label>
                    <input type="text" name="state" pattern="[A-Za-z]{2}" title="Two letter only" value="" required />
                     <br>
                    <label> Zip code [five digit only] </label>
                    <input type="text" name="zip"  pattern="[0-9]{5}" title="Five digit only" value=""  required/>
                     <br>
                    <label> Email </label>
                    <input type="text" name="emailAddr" title="ex)xxx@xxx.xxx" value=""  required />
                    
                    
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />

                </form>

            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
    </body>
</html>
