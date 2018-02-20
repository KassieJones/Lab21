<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: #140b00;
}

#header {
	top: 0px;
	left: 0px;
	position: fixed;
	color: #ffe375;
	background-color: #140b00;
	background-image:
		url("https://coffeeinmyveins.com/wp-content/uploads/2017/07/coffee-beans.jpg");
	background-repeat: no-repeat;
	background-position: center;
	height: 150px;
	width: 100%;
	z-index: 1;
	text-align: center;
	display: block;
}

#content {
	width: 100%;
	overflow-x: hidden;
	clear: both;
	border: 1px solid;
	margin-top: 135px;
	background-color: #fff5aa;
}
</style>




<title>Spring MVC Welcome</title>

</head>
<body>


	<div id="container">
		<div id="header" style="font-size: 20pt">
			GC Coffee <br> serving Java for Java<br>
		</div>
	</div>

	<div id="content">
		<h3>Registration!</h3>
		<br>

		<form action="success" method="get">
			First Name: <input type="text" name="fName" placeholder="Jane"><br>
			Last Name: <input type="text" name="lName" placeholder="Doe"><br>
			Street Address: <input type="text" name="streetAddress"
				placeholder="123 Main St."><br> City: <input
				type="text" name="city" placeholder="Detroit"><br>
			State: <input type="text" name="state" placeholder="MI"><br>
			Email: <input type="text" name="email" placeholder="janedoe@abc.com"><br>
			Phone Number(xxx-xxx-xxxx): <input type="tel" name="phone"
				placeholder="313-555-1212" pattern="\d{3}-\d{3}-\d{4}$"
				title="Phone number must be in proper format xxx-xxx-xxxx." required><br>
			Password:<input type="password" id="psw" name="pass"
				placeholder="Password1234"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Password must contain atleast 8 characters, 1 uppercase letter, 1 lowercase letter, and 1 number."
				required> <br>Your password should include be a minimum
			of 8 characters and contain uppercase letters, lowercase letters, and
			numbers. <br>
			<br> <input type="radio" name="gender" value="Male" checked>Male<br>
			<input type="radio" name="gender" value="Female">Female<br>
			<br> <input type="checkbox" name="test" value="Decaf">Decaf<br>
			<input type="checkbox" name="test" value="Espresso">Espresso<br>
			<br> Drink Options:<br> <select name="dropDownSpecs">
				<option value="Iced">Iced</option>
				<option value="Blended">Blended</option>
				<option value="Latte">Latte</option>
				<option value="Cappuccino">Cappuccino</option>
				<option value="Regular">Regular</option>
			</select> <br>
			<br> Milk Options:<br> <select name="dropDownMilk">
				<option value="Whole Milk">Whole Milk</option>
				<option value="2% Milk">2% Milk</option>
				<option value="Non-fat/Skim Milk">Non-fat/Skim Milk</option>
				<option value="Soy Milk">Soy Milk</option>
			</select> <br>
			<br> Flavor Shots:<br> <input type="checkbox" name="flavor"
				value="Chocolate">Chocolate<br> <input type="checkbox"
				name="flavor" value="Vanilla">Vanilla<br> <input
				type="checkbox" name="flavor" value="Caramel">Caramel<br>
			<input type="checkbox" name="flavor" value="Peanut Butter">Peanut
			Butter<br> <input type="checkbox" name="flavor"
				value="Peppermint">Peppermint<br> <input
				type="checkbox" name="flavor" value="No Flavor Shot">No
			Flavor<br> <input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>