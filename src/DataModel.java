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
	 
	 public void createPrivateData(String firstName, String lastName, String phoneNumber, String email) throws Exception {
		 
		 String insertSql = "INSERT INTO USER (USER_NAME, first_name, last_name, phone_number,email)"
       			+ "VALUES ('"+temporaryKeyString+"' , '"+firstName+"' , '"+lastName+"' , '"+phoneNumber+"' , '"+email+"'";

		Statement statement = connection.createStatement();
		
		statement.execute(insertSql);
		 
	 }

	public void createAddress(String street, String city, int zipCode) throws Exception {
		 
		String insertSql = "INSERT INTO USER (street, city, zip_code)"
       			+ "VALUES ('"+street+"' , '"+city+"' , '"+zipCode+"'";

		Statement statement = connection.createStatement();
		
		statement.execute(insertSql);
	}
	 
	 public void closeConnection() throws Exception {

		statement.close();
		
		connection.close();
		 
	 }
	 
	 
	 public void searchVehicle(String searchBy) throws Exception
	 {
		 String insertSql = "SELECT * FROM DEALERSHIP.make WHERE make LIKE " + searchBy; 
	       			
		 Statement statement = connection.createStatement();
			
			statement.execute(insertSql);
		  
	 }
	 
	 public void buyVehicle(int make_id) throws Exception
	 {
		 String insertSql = "DELETE FROM DEALERSHIP.make WHERE make_id = " + make_id +
				 " Delete from DEALERSHIP.listing where make_id= " + make_id;
		 
		
		 Statement statement = connection.createStatement();
			
		 statement.execute(insertSql);
		 
	 }
	 
	 
	
	 public void addListing(int listing_id, int make_id, int mileage, String color, double price, String description) throws Exception
	 {
	 
	 
	 String insertSql = "INSERT INTO DEALERSHIP.listing (listing_id, make_id, mileage, color, price, description) "
    			+ "VALUES (' "+listing_id+"' , '"+make_id+"' , '"+mileage +"'" + color + "' , '" + price
    			+ "' , '" + description + " )";
	 

	 Statement statement = connection.createStatement();
		
	 statement.execute(insertSql);
	 
	 
	 } 
	 
	 public void addEngine(int engine_id, int size, String fuel_type, int cylinder) throws Exception
	 {
	 
	 
	 String insertSql = "INSERT INTO DEALERSHIP.engine (engine_id, size, fuel_type, cylinders) values "
    			+ "VALUES (' " + engine_id + "' , '" + size + "' , '"  + fuel_type + "' , '"  + cylinder + "')";
	 
    Statement statement = connection.createStatement();
    			
    statement.execute(insertSql);
	 }
	 
	 public void addMake(int make_id, String make, String model, String type, int powertrain_id, int year) throws Exception
	 {
		 String insertSql = "INSERT INTO DEALERSHIP.make (make_id, make, model, type, powertrain_id, year) "
	       			+ "VALUES (' "+make_id+"' , '"+make+"' , '"+model +"'" + type + "' , '" + powertrain_id
	       			+ "' , '" + year + " )";
		 Statement statement = connection.createStatement();
			
		    statement.execute(insertSql);
		 
		 
		 
	 }
	 
	 
	 public void addPowertrain(int powertrain_id, String drive_type, String transmition) throws Exception
	 {
		 
		 String insertSql = "INSERT INTO DEALERSHIP.powertrain (powertrain_id, drive_type, transmition) values "
	       			+ "VALUES (' "+powertrain_id +"' , '"+drive_type +"' , '"+ transmition + "')";
		 
		 Statement statement = connection.createStatement();
			
		   statement.execute(insertSql);
		 
		 
		 
		 
	 }
	 
	 public void addMakeHasPowertrain (int make_id, int powertrain_id) throws Exception {
		 
		 
		 
		 String insertSql = "INSERT INTO DEALERSHIP.MakeHasPowertrain (make_id, powertrain_id) values "
	       			+ "VALUES (' "+make_id +"' , '"+powertrain_id + "')";
		 
		 Statement statement = connection.createStatement();
			
		   statement.execute(insertSql);
	 }
	 
	 
	 public void addPowertrainHasEngine(int powertrain_id, int engine_id) throws Exception
	 
	 {
		 String insertSql = "INSERT INTO DEALERSHIP.PowertrainHasEngine ((powertrain_id, engine_id) values "
	       			+ "VALUES (' "+powertrain_id +"' , '"+engine_id + "')";
		 Statement statement = connection.createStatement();
			
		   statement.execute(insertSql);
	 }
	 
	 
	 public void sortvehicle(String orderby, String ascOrDesc) throws Exception
	 {
		 
		 String insertSql = "SELECT * FROM DEALERSHIP.make order by " + orderby + " " + ascOrDesc;
		 
		 Statement statement = connection.createStatement();
			
		   statement.execute(insertSql);
		   
		 
	 }
	 
	 // color and description 
	 public void displayInfo(int make_id, String selection) throws Exception
	 {
		 String insertSql = "SELECT " + make_id + ", " + selection + " FROM DEALERSHIP.listing";
		 Statement statement = connection.createStatement();
		   statement.execute(insertSql);
		   
	 }
	 
	 //mileage or price
	 public void updateListingDouble (int listing_id, int mileOrPrice, double value )
	 {
		 String insertSql1 = "UPDATE DEALERSHIP.listing SET " + mileOrPrice  + " = " + value + " WHERE listing_id = "  + listing_id;
		 Statement statement = connection.createStatement();
		   statement.execute(insertSql1 );
		   
		  
				 
	 }
	 
	//color or description
		 public void updateListingString (int listing_id, String descOrColor, String value )
		 {
			 
			 String insertSql = "UPDATE DEALERSHIP.listing SET " + descOrColor  + " = " + value + " WHERE listing_id = "  + listing_id;
			 Statement statement = connection.createStatement();
			   statement.execute(insertSql );
			 
		 }
	 
		 // delete a row in listing 
		 public void removeListing(int listing_id)
		 {
			 String insertSql = "DELETE FROM DEALERSHIP.listing WEHRE listing_id = "   + listing_id; 
			 Statement statement = connection.createStatement();
			   statement.execute(insertSql );
			   
		
		 }
		 
		 public void removeMake(int make_id)
		 {
			 String insertSql = "DELETE FROM DEALERSHIP.make WEHRE make_id = "   + make_id; 
			 Statement statement = connection.createStatement();
			   statement.execute(insertSql );
			   
		
		 }
	 
	 
	
	 
}
