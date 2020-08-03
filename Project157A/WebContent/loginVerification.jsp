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
			
			String username = (String)request.getParameter("uname");
			String password = (String)request.getParameter("psw");

			try {
	            
	            java.sql.Connection con; 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
	            
	            Statement stmt = con.createStatement();
	            
	            String mySQLCode =  "SELECT * FROM dealership.user WHERE user_name = '" + username +"'";
	            
	            stmt.executeQuery(mySQLCode);
	            
	            ResultSet rs = stmt.executeQuery(mySQLCode);
	                         
			    mySQLCode =  "SELECT password FROM dealership.user WHERE user_name = '" + username + "'";
			    
			    stmt.executeQuery(mySQLCode);
	            	            
	            rs = stmt.executeQuery(mySQLCode);
	            			
	            while (rs.next()) {
	            	
	            	if(password.equals(rs.getString(1))){
	    	            
		            	out.println("Invalid Username or Password");
		            }
	            	
	            }
	            
	            rs = stmt.executeQuery(mySQLCode);
    			
	            while (rs.next()) {
	            	
					if(!password.equals(rs.getString(1))){
	            		
	            		out.println("Invalid Username or Password");
	            	}	            	
	            }    
	                  
	            rs.close();
	            stmt.close();
	            con.close();
	        } 
	        
	        catch(SQLException e) { 
	            out.println(" Wrong Username or Password"); 
	        }
			
			
			
			%>
			
			<p>
				
				<br>
							
			</p>
		
		</div>
		
</body>