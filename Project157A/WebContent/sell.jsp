<%@ page import="com.backEndJava.jsp.*" %>
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
			  
			<h1>Sell a Car</h1>
				<br>
			  <form action="listCreation.jsp" >
			  
			   <table style="with: 80%">
			    <tr>
			     <td>Make</td>
			     <td><input type="text" name="make" /></td>
			    </tr>
			    <tr>
			     <td>Model</td>
			     <td><input type="text" name="model" /></td>
			    </tr>
			    <tr>
			     <td>Mileage</td>
			     <td><input type="text" name="mileage" /></td>
			    </tr>
			    <tr>
			     <td>Color</td>
			     <td><input type="text" name="color" /></td>
			    </tr>
			    <tr>
			     <td>Price</td>
			     <td><input type="text" name="price" /></td>
			    </tr>
			    <tr>
			     <td>Description</td>
			     <td><input type="text" name="description" /></td>
			    </tr>    
			    <tr>
			     <td>Year</td>
			     <td><input type="text" name="year" /></td>
			    </tr>
			    <tr>
			     <td>Body Style</td>
			     <td><input type="text" name="type" /></td>
			    </tr>
			     <tr>
			    
			     <td><br>Optional<br><br></td>
			    </tr>	
			    <tr>
			     <td>Drive Type</td>
			     <td><input type="text" name="driveType" /></td>
			    </tr>
			    <tr>
			     <td>Transmission</td>
			     <td><input type="text" name="transmission" /></td>
			    </tr>
			    <tr>
			     <td>Fuel Type</td>
			     <td><input type="text" name="fuelType" /></td>
			    </tr>
			    <tr>
			     <td>EngineSize</td>
			     <td><input type="text" name="engineSize" /></td>
			    </tr>
			    <tr>
			     <td>Cylinders</td>
			     <td><input type="text" name="cylinders" /></td>
			    </tr>
			   </table>
			   <input type="submit" value="Submit" />
			  </form>
		
		</div>
</body>