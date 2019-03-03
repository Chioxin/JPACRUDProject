package com.skilldistillery.crudhomework.controllers;

public enum WebAction {
	ADD("addShip.do"),
	UPDATE("updateShip.do");
	

	WebAction(String action) {
		this.action = action;
		
	}
	
	private String action;
	
	@Override
	public String toString() {
		return action;
	}
	
	public String getAction() {
		return action;
	}


}