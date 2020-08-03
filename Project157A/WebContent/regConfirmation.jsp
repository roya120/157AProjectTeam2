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
			
			String username = (String)request.getParameter("username");
			String password = (String)request.getParameter("password");
			
			String email = (String)request.getParameter("email");
			
			String firstName = (String)request.getParameter("firstName");
			String lastName = (String)request.getParameter("lastName");
			String phone = (String)request.getParameter("phoneNumber");
			
			String address = (String)request.getParameter("street");
			String city = (String)request.getParameter("city");
			String zip = (String)request.getParameter("zip");
			
			try {
	            
	            java.sql.Connection con; 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
	            
	            Statement stmt = con.createStatement();
	            
	            String mySQLCode =  "INSERT INTO dealership.user (user_name, password) VALUES ('"+username+"' , '"+password+"')";
	            
	            stmt.executeUpdate(mySQLCode);
	            
				mySQLCode =  "INSERT INTO dealership.private_data (email,user_name, first_name,last_name,phone,address,city,zip) VALUES ('"+email+"' , '"+username+"', '"+firstName+"', '"+lastName+"', '"+phone+"', '"+address+"', '"+city+"', '"+zip+"')";
	            
	            stmt.executeUpdate(mySQLCode);
	                       
	        } 
	        
	        catch(SQLException e) { 
	            out.println("SQLException caught: " + e.getMessage()); 
	        }
			
			%>
		
		</div>
</body>