package com.skilldistillery.jpaproject.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpaproject.entities.Ship;

class ShipTest {
	
	static private EntityManagerFactory emf;
	private EntityManager em;
	Ship ship;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SpaceShips");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ship = em.find(Ship.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		ship = null;
	}

	@Test
	void test_Ship () {
		assertEquals(1, ship.getId());
		assertEquals("Crucifier", ship.getName());
		assertEquals("Amarr", ship.getEmpire());
		assertEquals("Frigate", ship.getType());
		assertEquals(5, ship.getSpeedWarp());
		assertEquals(350, ship.getSpeedVelocity());
		assertEquals(4.94, ship.getTimeToWarp());
		assertEquals(64.00, ship.getRadarRange());
		assertEquals(265, ship.getCargoCapacity());
		assertEquals(1064000, ship.getMass());
		assertEquals("Some Text 1", ship.getDescription());
		assertEquals("https://wiki.eveuniversity.org/images/thumb/a/a2/Crucifier.jpg/256px-Crucifier.jpg", ship.getImage());
	}
	
	
	@Disabled
	@Test
	void test() {
		fail("Not yet implemented");
	}

}
