package com.gc.controller;

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

	@RequestMapping ("/success")
	public ModelAndView registerSuccess(@RequestParam("fName") String firstName, @RequestParam("test") String checkbox, @RequestParam("dropDownSpecs") String drinkType, @RequestParam("dropDownMilk") String milkType, @RequestParam("flavor") String flavorShot) {
		String sayHello= "Hello, "+ firstName + ".\n Your order will be right up! \n" + checkbox + ", " + drinkType + ", with " + milkType + ", with " + flavorShot;
		
		//first parameter is name of jsp, second is name of EL tag variable name, third is the data or object we want to go back into our page
		return new ModelAndView("success", "helloMsg" , sayHello);
	}
}