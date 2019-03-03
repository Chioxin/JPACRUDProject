package com.skilldistillery.jpaproject.entities;

public enum EmpireType {
	AMARR("Amarr"),
	GALLENTE("Gallente"),
	MINMATAR("Minmatar"),
	CALDARI("Caldari");
	
	EmpireType(String displayName) {
		name = displayName;
	}
	
	final private String name;
	
	@Override
	public String toString() {
		return name;
	}
	
	public String getName() {
		return name;
	}
}
