package com.skilldistillery.crudhomework.data;

import java.util.List;

import com.skilldistillery.jpaproject.entities.EmpireType;
import com.skilldistillery.jpaproject.entities.Ship;
import com.skilldistillery.jpaproject.entities.ShipType;

public interface ShipDAO {
	public Ship findShipById (int id);
	public List<Ship> findShipsByType (ShipType type);
	public List<Ship> findShipsByEmpire (EmpireType empire);
	public Ship addShip (Ship newShip);
	public Ship updateShip (int id, Ship shipUpdate);
	public boolean destroyShipById (int id);

}
