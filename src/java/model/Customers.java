
package model;


public class Customers {

    private int customerID;
    private String customerName;
    private String customerType;
    private int customerNumber;

    public Customers() {
        this.customerID = 0;
        this.customerName = "";
        this.customerType = "";
        this.customerNumber = 0;
    }
    
        public Customers(int customerID, String customerName, String customerType, int customerNumber) {
        this.customerID = customerID;
        this.customerName = customerName;
        this.customerType = customerType;
        this.customerNumber = customerNumber;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }

    public int getCustomerNumber() {
        return customerNumber;
    }

    public void setCustomerNumber(int customerNumber) {
        this.customerNumber = customerNumber;
    }

    @Override
    public String toString() {
        return "Customers{" + "customerID=" + customerID + ", customerName=" + customerName + ", customerType=" + customerType + ", customerNumber=" + customerNumber + '}';
    }
    
    
        
        
        
        
}
