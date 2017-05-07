package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class SearchQuery {

    private Connection conn;
    private ResultSet results;

    public SearchQuery() {

        Properties props = new Properties();//MWC
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doSearch(String customersName) {

        try {
            String query = "SELECT * FROM customerss WHERE UPPER(customersName) LIKE ? ORDER BY customersID ASC ";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + customersName.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String getHTMLTable() throws SQLException {

        String table = "";

        table += "<table>";
        try {
            while (this.results.next()) {

                Customers customers = new Customers();
                customers.setCustomerID(this.results.getInt("customersID"));
                customers.setCustomerName(this.results.getString("customersName"));
                customers.setCustomerType(this.results.getString("customersType"));
                customers.setCustomerNumber(this.results.getInt("customersNumber"));

                table += "<tr>";

                table += "<td>";
                table += customers.getCustomersID();
                table += "</td>";

                table += "<td>";
                table += customers.getCustomersName();
                table += "</td>";

                table += "<td>";
                table += customers.getCustomersType();
                table += "</td>";

                table += "<td>";
                table += customers.getCustomesNumber();
                table += "</td>";

                table += "<td>";
                table += "<a href=update?customerID=" + customer.getCustomersID() + "> Update   </a>" + "<a href=delete?customerID=" + customer.getCustomersID() + "> Delete </a>";
                table += "</td>";

                table += "</tr>";

            }
  
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        table += "</table>";

        return table;

    }

}
