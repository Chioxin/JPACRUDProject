package com.skilldistillery.crudhomework.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.crudhomework.data.ShipDAO;
import com.skilldistillery.jpaproject.entities.EmpireType;
import com.skilldistillery.jpaproject.entities.Ship;
import com.skilldistillery.jpaproject.entities.ShipType;

@Controller
public class ShipController {
	
	@Autowired
	private ShipDAO dao;
	
	@RequestMapping(path= {"/", "home.do"}, method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(path="displayShip.do", method=RequestMethod.GET)
	public ModelAndView displayShipByID(@RequestParam("shipId") int id, HttpSession session) {
		ModelAndView mv = new ModelAndView("displayShip");
		Ship displayShip = dao.findShipById(id);
		session.setAttribute("currentlyDisplayedShip", displayShip);
		mv.addObject("displayShip", displayShip);
		return mv;
	}
	
	@RequestMapping(path="displayShipList.do", params="empire", method=RequestMethod.GET)
	public ModelAndView displayShipByEmpire(@RequestParam("empire") EmpireType empire) {
		ModelAndView mv = new ModelAndView();
		List<Ship> displayShipList = dao.findShipsByEmpire(empire);
		mv.addObject("displayShipList", displayShipList);
		
		if (displayShipList != null && displayShipList.size() > 0) {
			mv.setViewName("displayShipList");
		} else {
			mv.setViewName("error");
			mv.addObject("error", ControllerError.NO_EMPIRE.getErrorCode());
		}
		return mv;
	}
	
	@RequestMapping(path="displayShipList.do", params="type", method=RequestMethod.GET)
	public ModelAndView displayShipByType(@RequestParam("type") ShipType type) {
		ModelAndView mv = new ModelAndView();
		List<Ship> displayShipList = dao.findShipsByType(type);
		mv.addObject("displayShipList", displayShipList);
		
		if (displayShipList != null && displayShipList.size() > 0) {
			mv.setViewName("displayShipList");
		} else {
			mv.setViewName("error");
			mv.addObject("error", ControllerError.NO_TYPE.getErrorCode());
		}
		return mv;
	}
	
	@RequestMapping(path="addShip.do", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		ModelAndView mv = new ModelAndView("shipForm");
		Ship ship = new Ship();
		mv.setViewName("shipForm");
		mv.addObject("ship", ship);
		mv.addObject("action", WebAction.ADD.getAction());
		return mv;
	}
	
	@RequestMapping(path="addShip.do", method=RequestMethod.POST)
	public ModelAndView postShipToDB(@Valid Ship ship, Errors errors, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Ship newShip = dao.addShip(ship);
		if (newShip != null) {
			mv.setViewName("displayShip");
			mv.addObject("displayShip", newShip);
			session.setAttribute("currentlyDisplayedShip", newShip);
		} else {
			mv.setViewName("shipForm");
			mv.addObject("action", WebAction.ADD.getAction());
			mv.addObject("ship", ship); //Send them back to the shipForm with bad ship info.
		}
		return mv;
	}
	
	@RequestMapping(path="updateShip.do", method=RequestMethod.GET)
	public ModelAndView displayUpdateForm(Ship displayShip, HttpSession session) {
		ModelAndView mv = new ModelAndView("shipForm");
		mv.addObject("ship", session.getAttribute("currentlyDisplayedShip"));
		mv.addObject("action", WebAction.UPDATE.getAction());
		mv.setViewName("shipForm");
		return mv;
	}
	@RequestMapping(path="updateShip.do", method=RequestMethod.POST)
	public ModelAndView postUpdateToDB(@Valid Ship ship, Errors errors, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Ship updatedShip = dao.updateShip(ship.getId(), ship);
		
		if (updatedShip != null) {
			mv.setViewName("displayShip");
			mv.addObject("displayShip", updatedShip);
			session.setAttribute("currentlyDisplayedShip", updatedShip);
		} else {
			mv.setViewName("shipForm");
			mv.addObject("action", WebAction.UPDATE.getAction());
			mv.addObject("ship", ship);
		}
		return mv;
	}
	
	@RequestMapping(path="destroyShip.do", method=RequestMethod.GET)
	public ModelAndView questionDestroyShip(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("destroyShip");
		mv.addObject("ship", session.getAttribute("currentlyDisplayedShip"));
		return mv;
	}
	
	@RequestMapping(path="destroyShip.do", method=RequestMethod.POST)
	public ModelAndView destroyShip(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Ship destroyShip = (Ship) session.getAttribute("currentlyDisplayedShip");
		if (dao.destroyShipById(destroyShip.getId())) {
			mv.setViewName("index");
		} else {
			mv.setViewName("error");
			mv.addObject("error", ControllerError.NO_DELETE_SHIP.getErrorCode());
		}
		return mv;
	}

}
