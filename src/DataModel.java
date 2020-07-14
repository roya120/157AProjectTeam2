import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataModel {
	
	Connection connection;
	
	Statement statement;
	
	java.util.Date now;
	
	java.sql.Date sqlDate;
	
	String temporaryKeyString;
	
	int temporaryKeyInt; 

	 public DataModel() {
		 
	}
	 
	 public void startConnection() throws Exception{
		 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/dealership?serverTimezone=UTC", "username", "password"); 
	 
		now = new java.util.Date();
		
		sqlDate = new java.sql.Date(now.getTime());
		
	 }
	 
	 public void createUsername(String username, String password) throws Exception {
		
		 String insertSql = "INSERT INTO USER (USER_NAME, PASSWORD)"
		          			+ "VALUES ('"+username+"' , '"+password+"')";
		 
		 Statement statement = connection.createStatement();
		 
		 statement.execute(insertSql);
		 
		 temporaryKeyString = username;
	 }
	 
	 public void privateData(String firstName, String lastName, String phoneNumber, String email) throws Exception {
		 
		 String insertSql = "INSERT INTO USER (USER_NAME, first_name, last_name, phone_number,email)"
       			+ "VALUES ('"+temporaryKeyString+"' , '"+firstName+"' , '"+lastName+"' , '"+phoneNumber+"' , '"+email+"'";

		Statement statement = connection.createStatement();
		
		statement.execute(insertSql);
		 
	 }

	public void address(String street, String city, int zipCode) throws Exception {
		 
		String insertSql = "INSERT INTO USER (street, city, zip_code)"
       			+ "VALUES ('"+street+"' , '"+city+"' , '"+zipCode+"'";

		Statement statement = connection.createStatement();
		
		statement.execute(insertSql);
	}
	 
	 public void closeConnection() throws Exception {

		statement.close();
		
		connection.close();
		 
	 }
}
