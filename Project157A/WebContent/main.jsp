<%@ page import="com.backEndJava.jsp.*" %>


<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"></link>
       
    </head>

	<nav class="navbar navbar-expand-md navbar-black bg-light">
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
	        <ul class="navbar-nav mr-auto">
	        
	            <li class="nav-item ">
	                <a class="nav-link" href="shopCar.jsp">Shop Cars</a>
	            </li>
	            <li class="nav-item ">
	                <a class="nav-link" href="sell.jsp">Sell</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="newListings.jsp">New Listings</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="favorites.jsp">Favorites</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="howItWorks.jsp">How it Works</a>
	            </li>
	            
	        </ul>
	    </div>
	    <div class="mx-auto order-0">
	        <ul class="navbar-nav mr-auto">
	        
	            <li class="nav-item active" >
	                <a class="nav-link" href="local.jsp" style="font-size:25px;" >CarMart</a>
	            </li>
	            
	        </ul>
	    </div>
	    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
	        <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	                <a class="nav-link" href="register.jsp">Register</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="login.jsp">Login</a>
	            </li>
	        </ul>
	    </div>
	</nav>

	<body>

			<head>
	
			<style>
			
			
			/* Style the side navigation */
			.sidenav {
			  height: 100%;
			  width: 300px;
			  position: fixed;
			  z-index: 1;
			  top: 0;
			  left: 15;
			  overflow-x: hidden;
			  border-right-style: solid;
			  border-color: gray;
			  border-right-width: 1px;
			  background-color: white;
			  background: rgba(255, 255, 255, 0.5)
			}
			
			.body {
			  margin-left: 280px;
			  padding-left: 20px;
			  background: url(https://image.shutterstock.com/image-photo/blurred-abstract-dealership-store-defocused-260nw-1486381349.jpg);
			  background-repeat: no-repeat;
  			  background-size: 1400px 1000px;
  			  background-attachment: fixed;
			}
			
			.sidenavSearch {
			  height: 140px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			  padding-top: 10px;
			}
			
			.bottomLine{
			 border-bottom-style: dashed;
			  border-color: grey;
			  border-right-width: 1px;
			  padding-left: 10px;
			}
			
			.label{
			 font-weight:bold;
			 padding-left: 10px;
			}
			
			.sidenavPrice {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			.sidenavYear {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			.sidenavDrive {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			/* Style the content */
			.content {
			  margin-left: 280px;
			  padding-left: 20px;
			}
			</style>
			
			</head>
			<body class="body">
			<br>
			<div class="sidenav">
			
			<form action="displaySearch.jsp" >	
				<div class="sidenavSearch">
					
						<label class="label">Make & Model</label>	
						
						<div>
							Make:
							<br> 
					  		<select name="make" id="make" onchange="populate(this.id,'model');" style="width: 180px;" >
					  	 	<option value=""></option> 
							    <% for(String x : AllMakeModel.getMake()){ 
							        String party= x; %> 
							        <option value="<%=party%>" > <%=party%> 
							        </option>
							    <%}%> 
							</select>
						</div>
							
						<div>
							Model:
							<br> 
					  		<input type="text" name="model" />
						</div>
						<br>
						<input class="btn btn-primary" type="submit" value="Search"/>
					
			 	</div>
			 	<br><br><br>
			 	<div class="bottomLine">
			 	
			 	</div>
			 	<br>
				<div class="sidenavDrive">
						<label class="label">Body Style:</label>
						<br> 
					  	<select name="type" style="width: 180px;">
					  	<option></option>
					  	<option>Sedan</option>
					  	<option>SUV</option>
						<option>Cargo Van</option>
					  	<option>Coupe</option>
					  	<option>Minivan</option>
					  	<option>Hatchback</option>
					  	<option>Convertible</option>
					  	<option>Truck</option>
						</select>
				</div>
				<br>
			 	<div class="sidenavPrice">
			 			
			 			<label class="label">Price:</label>
			 			<br>
					  	<input style="width: 230px;" type="range" name="price"
					         min="0" max="60000" step="1000">
					  
				</div>
				<br>
				
				<div class="sidenavYear">
					
						<label class="label">Year:</label>
						<div>
							From:
					  		<select name="fromYear" style="width: 85px;">
					  	 	
					  	 		<option value="">SELECT</option> 
							    <% for(int i=1990;i<=java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);i++){ 
							        int party= i; %> 
							        <option value="<%=party%>" > <%=party%> 
							        </option>
							    <%}%> 
							</select>
						
							To:
							 
					  		<select name="toYear" style="width: 85px;">
					  	 	<option value="">SELECT</option> 
							    <% for(int i=1990;i<=java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);i++){ 
							        int party= i; %> 
							        <option value="<%=party%>" > <%=party%> 
							        </option>
							    <%}%> 
							</select>
						
						</div>
						
			 	</div>
			 	
			 	<br>
			 	<div class="sidenavPrice">
			 			
			 			<label class="label">Mileage:</label>
			 			<br>
					  	<input style="width: 230px;" type="range" name="mileage"
					         min="0" max="200000" step="1000">
					  
				</div>
				<br>
				<div class="sidenavDrive">
						<label class="label">Drive Type:</label>
						<br> 
					  	<select name="driveType" style="width: 180px;">
					  	<option></option>
					  	<option>fwd</option>
					  	<option>rwd</option>
					  	<option>awl</option>
					  	<option>4wd</option>
						</select>
				</div>
				<br>
				<div class="sidenavDrive">
						<label class="label">Transmission:</label>
						<br> 
					  	<select name="transmission" style="width: 180px;">
					  	<option></option>
					  	<option>Automatic</option>
					  	<option>Manual</option>

						</select>
				</div>
				<br>
				<div class="sidenavDrive">
						<label class="label">Color:</label>
						<br> 
					  	<input type="text" name="color"/>
				</div>
				<br>
				<div class="sidenavDrive">
						<label class="label">Fuel Type:</label>
						<br> 
					  	<select name="fuelType" style="width: 180px;">
					  	<option></option>
					  	<option>Diesel</option>
					  	<option>Gas</option>
						<option>Hybrid</option>
					  	<option>Electric</option>
						</select>
				</div>
				<br>
				<div class="sidenavDrive">
						<label class="label">Cylinders:</label>
						<br> 
					  	<select name="cylinders" style="width: 180px;">
					  	<option></option>
					  	<option>4</option>
					  	<option>6</option>
						<option>8</option>
						</select>
				</div>
				<br>
				
				<div class="sidenavDrive">
						<label class="label">Engine Size:</label>
						<br> 
					  	<select name="engineSize" style="width: 180px;">
					  	<option></option>
					  	<option>2.0 L</option>
					  	<option>3.0 L</option>
						<option>4.0 L</option>
						<option>5.0 L</option>
						<option>6.0 L</option>
						</select>
				</div>
				<br><br><br>
				</form>
			</div>

			
			</body>

  	</body>
</html>