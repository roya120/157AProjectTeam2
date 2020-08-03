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
			
			#rightbox{ 
                float:right; 
                background:white; 
                width:25%; 
                height:280px;
                padding-right: 30px; 
            } 
            
            #leftbox { 
                float:left;  

                width:%100; 

            }
		
		</style>
</head>

<body class="body">		
		<div class="content">
		   <div id = "boxes"> 
				<div id="leftbox">
					<table border = "1">  
					
					<tr>
					
					<td>
					<%
					
					try {
			            
			            java.sql.Connection con; 
			            Class.forName("com.mysql.cj.jdbc.Driver");
			            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "cs157a");
			            
			            Statement stmt = con.createStatement();
			            
			            String mySQLCode = " SELECT listing_id, make, model, mileage, color, price, description FROM dealership.listing JOIN dealership.make ON listing.make_id = make.make_id";
			            
			            ResultSet rs = stmt.executeQuery(mySQLCode);
			            
			            while (rs.next()) {
			                out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+rs.getString(5)+" "+rs.getDouble(6)+" "+rs.getString(7)+"<br/><br/>");
			            }
			            rs.close();
			            stmt.close();
			            con.close();
			        } 
			        
			        catch(SQLException e) { 
			            out.println("SQLException caught: " + e.getMessage()); 
			        }
					
					%>
					</td>
					</tr>
					</table>
				</div>
				
				<div id = "rightbox"> 
                	<h2>Buy Car</h2> 
                	
                	<form action="delete.jsp" >	
				
						<div>
							Pick Listing ID
							<br> 
					  		<input type="text" name="listingID" />
						</div>
						<br>
						<input class="btn btn-primary" type="submit" value="Buy"/>
					</form>
			 	</div>
                
                
                </div>
               
           </div>     	
</body>