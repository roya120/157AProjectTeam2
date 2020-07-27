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
	
	String[] porsche = {"Boxster", "Cayenne", "Macan", "Panamera"};
	String[] acura = {"ILX", "MDX", "RDX", "TLX", "TSX"};
	String[] alfa-romeo = {"Giulia"};
	String audi = {"A3 e-tron", "A3", "A4", "A5", "A6", "Q3", "Q5", "Q7", "S3", "S4", "S5", "TTS", "allroad"};
	String[] bmw = {"1 Series", "2 Series", "3 Series", "4 Series", "5 Series", "M3", "X1", "X3", "X4", "X5", "i3"};
	String[] chevrolet = {"Bolt EV", "Camaro", "Covette", "Cruze Limited", "Cruze", "Equinox","Malibu Limited", "Malibu", "Silverado 1500",
			"Sonic", "Spark EV", "Spark", "Tahoe", "Traverse", "Volt"};
	
	String[] chrysler= {"200", "Pacifica"};
	String[] dodge = {"Avenger", "Challenger", "Charger", "Dart", "Durango", "Journey"}; 
	String [] fia= {"124 spider", "500", "500L", "500X","500e"}; 
	String[] ford = {"C-Max Energi", "C-Max Hybrid", "Edge", "Escape", "Explorer", "Fiesta", "Flex", "Focus Electric",
			"Focus", "Fusion Energi", "Fusion", "Mustang"};
	String[] gmc = {"Acadia" , "Sierra 1500"};
			
	String[] honda = {"Accord Hybrid", "Accord", "GR-V", "Civic Hybrid", "Civic Type R", "Civic", "Element", "Fit",
			"HR-V", "Odyssey", "Pilot"};
	
	String hyundai = {"Accent", "Elantra GT", "Elantra Touring", "Elantra", "Genesis Coupe", "Genesis","Loniq Hybrid",
			"Santa Fe Sport", "Santa Fe", "Sonata Hybrid", "Sonata Plug-In Hybrid","Sonata","Tucson","Veracruz"};
	
	String[] infinity = {"Q50", "QX60", "QX80"};
	
	String[] jaguar = {"E-PACE", "F-PACE", "F-TYPE", "XF"};
	
	String[] jeep= {"Cherokee", "Compass", "Grand Cherokee", "Renegade", "Wrangler Unlimited" , "Wrangler"}; 
	
	String[] kia = {"Forte", "Niro", "Optima Hybrid", "Optimia", "Sorento", "Soul"};
	
	String[] land-rover = {"Discovery Sport", "Range Rover Evoque", "Range Rover Velar"}; 
	String[] lexux = {"CT 200h", "ES 300h", "ES 350", "ES", "GX 460", "is 200t", "is 250", "is 350", "LS 460",
			"NX 300h", "RX 350", "RX 400h", "RX 450h", "RX"};
	
	String[] lincoln = {"MKT"};
	
	String[] maserati = {"Levante"};
	
	String[] mazda= {"CX-3", "CX-5","CX-9", "MX-5 Miata RF", "MX-5 Miata", "Mazda2", "Mazda3", "Mazda5", "Mazda6"};
	
	String[] mercedes-benz = {"AMG C 43", "AMG E 63", "C 250", "CS 300", "C 63", "CLA 250", "E 350", "GL 450",
			"GL 550", "GLA 250", "GLC 300", "GLE 350", "GLK 350", "GLS 450"};
	String[] mini = {"Cooper Countryman", "Cooper", "Countryman", "Hardtop"};
	
	String[] mitsubishi = {"Outlander Sport"}; 
	String[] nissan = {"Altima", "Juke", "Leaf", "Maxima", "Murano", "Pathfinder", "Quest", "Rogue Sport",
			"Rogue", "Sentra", "Versa Note", "Versa"};
	
	String[] scion = {"iA", "xB", "xD"};
	
	String[] smart = {"fortwo"};
	String[] subaro = {"BRZ", "Crosstrek", "Forester", "Impreza WRX", "Impreza", "Lexacy", "Outback", 
	"WRX STI", "WRX", "XV Crosstrek"};		
	
	
	String[] tesla = {"Model 3", "Model 5"};
	
	String[] toyota = {"4Runner", "Avalon Hybird", "Camry Hybrid", "Camry", "Corolla", "Highlander", 
			"Prius Plug-in", "Prius Prime", "Prius C", "Prius V", "Prius", "RAV4 Hybrid", "RAV4", "Sienna", "Tacoma", "Yaris"};
	
	String[] volkswagen = {"Beetle", "CC", "GTI", "Golf Alltrack", "Golf GTI", "Golf R", "Golf","Jetta SportWagen"
	          "Jetta", "Passat", "Tiguan", "Touareg", "e-Golf"};		
	String[] volvo = {"S60", "V60 Cross Country", "V60", "XC60"};
	

	
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
