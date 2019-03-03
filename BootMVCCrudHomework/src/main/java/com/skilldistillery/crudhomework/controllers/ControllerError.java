package com.skilldistillery.crudhomework.controllers;

public enum ControllerError {
	NO_EMPIRE(1),
	NO_TYPE(2),
	NO_SHIP(3), 
	NO_NEW_SHIP(4),
	NO_DELETE_SHIP(5),
	NO_UPDATE_SHIP(6);
	

	ControllerError(int errorCode) {
		this.errorCode = errorCode;
		
	}
	
	private int errorCode;
	
	@Override
	public String toString() {
		return "" + errorCode;
	}
	
	public int getErrorCode() {
		return errorCode;
	}


}
