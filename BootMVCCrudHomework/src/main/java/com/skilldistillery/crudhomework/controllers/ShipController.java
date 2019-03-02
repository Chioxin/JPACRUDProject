package com.skilldistillery.crudhomework.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShipController {
	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public String index() {
		return "WEB-INF/index.jsp";
	}

}
