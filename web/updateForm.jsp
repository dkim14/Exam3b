<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Update a Customer</title>
    </head>
    <body>
        
         <div class = "wrap"> <!--div to hold all other divs -->
            
            <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>
            
            <div class="main"> <!--main div-->
                
                
       <h2>Update A Customer Record</h2>
        
        <form name="updateForm" action="updateCustomer" method="get">
           <table>
            <br>
            <label> Customer ID: </label>
            <input type="text" name="id" value="<%= customer.getCustomerID() %>" readonly size="20" />
            <br>
            <label> First Name: </label>
            <input type="text" name="firstName" value="<%= customer.getCustomerName() %>" size="20" />
            <br>
            <label> Last Name: </label>
            <input type="text" name="lastName" value="<%= customer.getCustomerType() %>" size="20"/>
            <br>
            <label> Address 1</label>
            <input type="text" name="addr1" value="<%= customer.getCustomerNumber() %>" size="20"/>
             <br>
            <label> Address 2</label>
            <input type="text" name="addr2" value="<%= customer.getCustomerNumber() %>" size="20"/> <br>
            <label> City</label>
            <input type="text" name="city" value="<%= customer.getCustomerNumber() %>" size="20"/> <br>
            <label> State </label>
            <input type="text" name="state" value="<%= customer.getCustomerNumber() %>" size="20"/> <br>
            <label> Zip code</label>
            <input type="text" name="zip" value="<%= customer.getCustomerNumber() %>" size="20"/> <br>
            <label> Email</label>
            <input type="text" name="emailAddr" value="<%= customer.getCustomerNumber() %>" size="20"/>
            
            <br>
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Update" />
           
        </form>
            
            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
         
    </body>
</html>
