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

			try {
	            
	            java.sql.Connection con; 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
	            
	            Statement stmt = con.createStatement();
	            
	            String mySQLCode = "INSERT INTO dealership.userfavoritelisting (user_name, listing_id) VALUES ('Emmy14', "+ listingID+")";
	            
	            stmt.executeUpdate(mySQLCode);
	            	           
	        } 
	        
	        catch(SQLException e) { 
	            out.println("SQLException caught: " + e.getMessage()); 
	        }
			
			%>
			
			<p>
				Added to Favorites			
			</p>
		
		</div>
		
</body>