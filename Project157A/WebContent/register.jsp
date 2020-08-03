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
			  
			<h1>NEW REGISTRATION</h1>
				<br>
			  <form action="regConfirmation.jsp">
			   <table style="with: 80%">
			    <tr>
			     <td>First Name</td>
			     <td><input type="text" name="firstName" /></td>
			    </tr>
			    <tr>
			     <td>Last Name</td>
			     <td><input type="text" name="lastName" /></td>
			    </tr>
			    <tr>
			     <td>UserName</td>
			     <td><input type="text" name="username" /></td>
			    </tr>
			    <tr>
			     <td>Password</td>
			     <td><input type="password" name="password" /></td>
			    </tr>
			    <tr>
			     <td>Phone Number</td>
			     <td><input type="text" name="phoneNumber" /></td>
			    </tr>
			    <tr>
			     <td>Email</td>
			     <td><input type="text" name="email" /></td>
			    </tr>
			    <tr>
			     <td>Street</td>
			     <td><input type="text" name="street" /></td>
			    </tr>
			    <tr>
			     <td>City</td>
			     <td><input type="text" name="city" /></td>
			    </tr>
			    <tr>
			     <td>Zip Code</td>
			     <td><input type="text" name="zip" /></td>
			    </tr>
			   </table>
			   <input type="submit" value="Submit" />
			  </form>
		
		</div>
</body>