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
	                <a class="nav-link" href="main.jsp">Shop Cars</a>
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
	        
	            <li class="nav-item active">
	                <a class="nav-link" href="main.jsp">CarMart</a>
	            </li>
	            
	        </ul>
	    </div>
	    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
	        <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	                <a class="nav-link" href="#">Register</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="#">Login</a>
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
			  width: 280px;
			  position: fixed;
			  z-index: 1;
			  top: 65;
			  left: 0;
			  overflow-x: hidden;
			  border-right-style: solid;
			  border-color: gray;
			  border-right-width: 1px;
			}
			
			.sidenavSearch {
			  height: 140px;
			  background-color: #F5F5F5;

			}
			
			.bottomLine{
			 border-bottom-style: dashed;
			  border-color: grey;
			  border-right-width: 1px;
			}
			
			.label{
			 font-weight:bold;
			}
			
			.sidenavPrice {
			  height: 70px;
			  background-color: #F5F5F5;
			}
			
			.sidenavYear {
			  height: 70px;
			  background-color: #F5F5F5;;
			}
			
			.sidenavDrive {
			  height: 70px;
			  background-color: #F5F5F5;;
			}
			
			/* Style the content */
			.content {
			  margin-left: 280px;
			  padding-left: 20px;
			}
			</style>
			
			</head>
			<body>
			
			<div class="sidenav">
			<form action="displaySearch.jsp" >	
				<div class="sidenavSearch">
					
						<label class="label">Make & Model</label>	
						
						<div>
							Make:
							<br> 
					  		<select name="make" id="make" onchange="populate(this.id,'model');" style="width: 180px;" >
					  	 	<option value="">SELECT</option> 
							    <% for(String x : AllMakeModel.getMake()){ 
							        String party= x; %> 
							        <option value="<%=party%>" > <%=party%> 
							        </option>
							    <%}%> 
							</select>
						</div>
						
							<script>
							
								function populate(make,model){
									
									var mymake = document.getElementById(make);
									var mymodel = document.getElementById(model);
									
									s2.innerHTML = "";
									
									if
									
								}
							
							</script> 
							
						<div>
							Model:
							<br> 
					  		<select name="model" id="model" style="width: 180px;">
					  	 		<option></option>
							</select>
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
							    <% for(int i=1990;i<java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);i++){ 
							        int party= i; %> 
							        <option value="<%=party%>" > <%=party%> 
							        </option>
							    <%}%> 
							</select>
						
							To:
							 
					  		<select name="toYear" style="width: 85px;">
					  	 	<option value="">SELECT</option> 
							    <% for(int i=1990;i<java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);i++){ 
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
					  	<option>Front Wheel Drive</option>
					  	<option>Rear Wheel Drive</option>
					  	<option>All Wheel Drive</option>
					  	<option>Four Wheel Drive</option>
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
						<label class="label">Size:</label>
						<br> 
					  	<select name="cylinderSize" style="width: 180px;">
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
			
			<div class="content">
			  <h2>CSS Template</h2>
			  <p>A full-height, fixed sidenav and content.</p>
			</div>
			
			</body>

  	</body>
</html>