<%@ page import="com.backEndJava.jsp.*" %>
<%@ page import="java.sql.*"%>


<jsp:include page="main.jsp"/>

<head>
	
		<style>
			
			/* Style the content */
			.content {
			  margin-left: 280px;
			  padding-left: 20px;
			  
			}
					
			.body {
			  margin-left: 280px;
			  padding-left: 20px;
			  background: url(https://image.shutterstock.com/image-photo/blurred-abstract-dealership-store-defocused-260nw-1486381349.jpg);
			  background-repeat: no-repeat;
  			  background-size: 1400px 1000px;
  			  background-attachment: fixed;
			}
		
		</style>
</head>

<body class="body">		
		<div class="content">
		
			<table border="1">
							  
				<%
				
				String make = (String)request.getParameter("make");
				String model = (String)request.getParameter("model");
				String type = (String)request.getParameter("type"); // Body Style
				String price = (String)request.getParameter("price");
				String fromYear = (String)request.getParameter("fromYear");
				String toYear = (String)request.getParameter("toYear");
				String mileage = (String)request.getParameter("mileage");
				String driveType = (String)request.getParameter("driveType");
				String transmission = (String)request.getParameter("transmission");
				String color = (String)request.getParameter("color");
				String cylinders = (String)request.getParameter("cylinders");
				String engineSize = (String)request.getParameter("engineSize");
				
				String stop = "continue";
					
			while(stop == "continue"){
				
				if(request.getParameter("make") == null ){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make, model, mileage, color, price, description FROM dealership.listing JOIN dealership.make ON listing.make_id = make.make_id";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+rs.getString(4)+" "+rs.getDouble(5)+" "+rs.getString(6)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			              
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
				
				if(request.getParameter("make") != "" && request.getParameter("model")!= "" && request.getParameter("color")!= "" && request.getParameter("fromYear")!= "" && request.getParameter("toYear")!= ""){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make.make , make.model, make.year, listing.color  FROM dealership.listing JOIN dealership.make ON make.make_id = listing.make_id WHERE make LIKE '"+make+"' AND model like '"+model+"' AND color LIKE '"+color+"' AND year BETWEEN "+ fromYear +" AND " +toYear;
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getInt(3)+" "+rs.getString(4)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			       
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
								
				if(request.getParameter("make") != "" && request.getParameter("color")!= ""){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make.make, make.model, listing.mileage, listing.color FROM dealership.listing JOIN dealership.make ON listing.make_id = make.make_id where make LIkE '"+make+"' AND color LIKE '"+color+"'";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getDouble(3)+" "+rs.getString(4)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
				
				if(request.getParameter("make") != "" && request.getParameter("model")!= "" && request.getParameter("price")!= ""){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make, model , type, price FROM dealership.make JOIN dealership.listing ON make.make_id = listing.make_id WHERE make LIKE '"+make+"' AND model LIKE '"+model+"' AND price BETWEEN 0 AND "+ price;
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getDouble(4)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
				/*
				if(request.getParameter("make") != "" && request.getParameter("mileage") != "100000" ){
					out.println("makeMileage");
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make.make, make.model, listing.mileage FROM dealership.listing JOIN dealership.make ON make.make_id = listing.make_id WHERE mileage < " +mileage+" AND make LIKE '"+ make+ "'";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getDouble(3)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
				*/	
				if(request.getParameter("make") !="" && request.getParameter("model")!= "" ){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make.make,make.model, listing.mileage, listing.color, listing.price, listing.description FROM dealership.listing JOIN dealership.make ON listing.make_id = make.make_id WHERE make LIKE '"+make+"' AND model LIKE '" +model+"'" ;
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+ " "+rs.getDouble(5)+" "+ rs.getString(6) + "<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					
					break;
				}
				
							
				
				
				if(request.getParameter("make") != "" && request.getParameter("EngineSize")!= ""){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make, model, size FROM DEALERSHIP.make JOIN DEALERSHIP.PowertrainHasEngine ON make.powertrain_id = PowertrainHasEngine.powertrain_id JOIN  DEALERSHIP.engine ON PowertrainHasEngine.engine_id = engine.engine_id WHERE make LIKE '"+make+"' AND size LIKE '"+engineSize+"'";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					break;
				}
				
				if(request.getParameter("driveType") != null ){
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT make, model, drive_type FROM DEALERSHIP.make JOIN DEALERSHIP.powertrain ON make.powertrain_id = powertrain.powertrain_id WHERE drive_type like '"+driveType+"'";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			    	}
					break;
				}
				
				
				
			}		
			
			%>
			
			</table>
		</div>
</body>