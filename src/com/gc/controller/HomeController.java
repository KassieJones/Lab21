package com.gc.controller;

// Step # 1
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/*
 * @author: Kassie Jones
 *
 */

@Controller
public class HomeController {

	@RequestMapping("/welcome")
	public String registerForm() {
		return "register";
	}

	@RequestMapping("/success")
	public ModelAndView registerSuccess(@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("phone") String phone,
			@RequestParam("streetAddress") String streetAddress, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("zip") int zip, @RequestParam("test") String checkbox,
			@RequestParam("dropDownSpecs") String drinkType, @RequestParam("dropDownMilk") String milkType,
			@RequestParam("flavor") String flavorShot) throws ClassNotFoundException, SQLException {
		
		
		Connection con = getDBConnection();

		// Step 4: Create Statement
		String preparedSql = "insert into users(firstName, lastName, phone, streetAddress, city, state, zip)" + "values(?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(preparedSql);
		// I am using the set string methods to add values for the ??? in the
		// PreparedStatement
		ps.setString(1, firstName); // dummy data
		ps.setString(2, lastName);
		ps.setString(3, phone);
		ps.setString(4, streetAddress);
		ps.setString(5, city);
		ps.setString(6, state);
		ps.setInt(7, zip);
		
		// Step 5: execute Statement
		ps.execute(); // this is pushing the data to the DB

		// Optional step, but you should always do this
		con.close();
		
		String sayHello = "Hello, " + firstName + ".\n Your order will be right up! \n" + checkbox + ", " + drinkType
				+ ", with " + milkType + ", with " + flavorShot;

		// first parameter is name of jsp, second is name of EL tag variable name, third
		// is the data or object we want to go back into our page
		return new ModelAndView("success", "helloMsg", sayHello);
	}
	
	private Connection getDBConnection() throws ClassNotFoundException, SQLException {
		// prep for step # 3
		String url = "jdbc:mysql://localhost:3306/coffeeshopdb";
		String userName = "root";
		String password = "Michelle2010";

		// Step #2: Load and Register Driver
		Class.forName("com.mysql.jdbc.Driver");

		// Step #3: Create Connection //create a singleton for final projects
		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}
	
	
	@RequestMapping("/welcome2")
	public ModelAndView listAllCustomers() throws ClassNotFoundException, SQLException {
		Connection con = getDBConnection();
		String query = "SELECT * FROM items";
		// step 4, create statement
		PreparedStatement st = con.prepareStatement(query);

		// step 5, retrieve results --- optional
		ResultSet rs = st.executeQuery();

		ArrayList<String> list = new ArrayList<>();

		// step 6, processing results --- optional
		while (rs.next()) {
			String item = rs.getString(1);
			String price = rs.getString(2);
			list.add(item + " " + price);
		}

		return new ModelAndView("welcome2", "message", list);
	}
	
	
	
	
	
	
}