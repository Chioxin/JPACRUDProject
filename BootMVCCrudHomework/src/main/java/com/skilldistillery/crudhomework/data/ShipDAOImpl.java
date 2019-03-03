package com.skilldistillery.crudhomework.data;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaproject.entities.EmpireType;
import com.skilldistillery.jpaproject.entities.Ship;
import com.skilldistillery.jpaproject.entities.ShipType;

@Transactional
@Service
public class ShipDAOImpl implements ShipDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	public void close() { // is this even needed? Where would I use it?
		em.close();
	}
	
	public Ship findShipById (int id) {
		return em.find(Ship.class, id);
	}
	
	public List<Ship> findShipsByType (ShipType type) {
		List<Ship> myList = null;
		String query = "SELECT ship FROM Ship ship Where ship.type = :xtype";
		myList = em.createQuery(query, Ship.class)
				.setParameter("xtype", type)
				.getResultList();
		return myList;
	}
	
	public List<Ship> findShipsByEmpire (EmpireType empire) {
		List<Ship> myList = null;
		String query = "SELECT ship FROM Ship ship Where ship.empire = :xempire";
		myList = em.createQuery(query, Ship.class)
				.setParameter("xempire", empire)
				.getResultList();
		return myList;
	}
	
	public Ship addShip (Ship ship) {
//        I feel like these are needed, but it won't work with them in. Spring magic?
//		em.getTransaction().begin();
		em.persist(ship);
		em.flush();
//		em.getTransaction().commit();
		return ship;
	}
	
	public Ship updateShip (int id, Ship shipUpdate) {
		Ship shipActual = findShipById(id);
		
		if (shipActual != null) {
//			em.getTransaction().begin();
			shipActual.setCargoCapacity(shipUpdate.getCargoCapacity());
			shipActual.setDescription(shipUpdate.getDescription());
			shipActual.setEmpire(shipUpdate.getEmpire());
			shipActual.setMass(shipUpdate.getMass());
			shipActual.setName(shipUpdate.getName());
			shipActual.setRadarRange(shipUpdate.getRadarRange());
			shipActual.setSpeedVelocity(shipUpdate.getSpeedVelocity());
			shipActual.setSpeedWarp(shipUpdate.getSpeedWarp());
			shipActual.setTimeToWarp(shipUpdate.getTimeToWarp());
			shipActual.setType(shipUpdate.getType());
			shipActual.setCost(shipUpdate.getCost());
			em.persist(shipActual);
			em.flush();
//			em.getTransaction().commit();
		}
		
		return shipActual;
	}
	
	public boolean destroyShipById (int id) {
		boolean destroySuccess = false;
		Ship destroyMe = em.find(Ship.class, id);
		
		if (destroyMe != null) {
//			em.getTransaction().begin();
			em.remove(destroyMe);
//			em.getTransaction().commit();
			
			Ship testDestroy = em.find(Ship.class, id);
			
			if (testDestroy == null) {
				destroySuccess = true;
			}
		}
		
		
		return destroySuccess;
	}

}
