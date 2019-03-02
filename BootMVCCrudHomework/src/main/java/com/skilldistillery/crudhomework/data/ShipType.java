package com.skilldistillery.crudhomework.data;

public enum ShipType {
	FRIGATE("Frigate"),
	CRUISER("Cruiser"),
	BATTLECRUISER("Battlecruiser"),
	BATTLESHIP("Battleship");
	
	ShipType(String displayName) {
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
