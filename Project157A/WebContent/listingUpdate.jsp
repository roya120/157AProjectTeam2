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
			  
			<% 
			
			String listingID = (String)request.getParameter("listingID");
			String make = (String)request.getParameter("make");
			String model = (String)request.getParameter("model");
			String type = (String)request.getParameter("type"); // Body Style
			String price = (String)request.getParameter("price");
			String fromYear = (String)request.getParameter("fromYear");
			String toYear = (String)request.getParameter("toYear");
			String year = (String)request.getParameter("year");
			String mileage = (String)request.getParameter("mileage");
			String driveType = (String)request.getParameter("driveType");
			String transmission = (String)request.getParameter("transmission");
			String color = (String)request.getParameter("color");
			String cylinders = (String)request.getParameter("cylinders");
			String engineSize = (String)request.getParameter("engineSize");
			String description = (String)request.getParameter("description");
			
			
			try {
	            
	            java.sql.Connection con; 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
	            
	            Statement stmt = con.createStatement();
	            
	            String mySQLCode =  "UPDATE dealership.listing SET mileage = "+mileage+" WHERE listing_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				 mySQLCode =  "UPDATE dealership.listing SET color = '"+color+"' WHERE listing_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "UPDATE dealership.make SET year = "+year+" WHERE make_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
 				mySQLCode =  "UPDATE dealership.make SET make = '"+make+"' WHERE make_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "UPDATE dealership.make SET model = '"+model+"' WHERE make_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "UPDATE dealership.make SET type = '"+type+"' WHERE make_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "UPDATE dealership.listing SET description = '"+description+"' WHERE listing_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "UPDATE dealership.listing SET price = '"+price+"' WHERE listing_id ="+listingID;
	            
	            stmt.executeUpdate(mySQLCode);
                  
	        } 
	        
	        catch(SQLException e) { 
	            out.println("SQLException caught: " + e.getMessage()); 
	        }
			
			%>
			
			<p>
				Update is Complete
				<br>		
			</p>
		
		</div>
</body>