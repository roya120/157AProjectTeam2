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
			  
			<h1>Update Listing</h1>
				<br>
			  <form action="listingUpdate.jsp" >
			  
			   <table style="with: 80%">
			   
			    <tr>
			     <td>Listing ID</td>
			     <td><input type="text" name="listingID" /></td>
			    </tr>
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
			   </table>
			   <input type="submit" value="Submit" />
			  </form>
		
		</div>
</body>