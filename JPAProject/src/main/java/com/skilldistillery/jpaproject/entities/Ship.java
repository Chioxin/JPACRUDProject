package com.skilldistillery.jpaproject.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ship {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	@Enumerated(EnumType.STRING)
	private EmpireType empire;

	@Enumerated(EnumType.STRING)
	private ShipType type;

	@Column(name = "speed_warp")
	private int speedWarp;

	@Column(name = "speed_velocity")
	private int speedVelocity;

	@Column(name = "time_to_warp")
	private double timeToWarp;

	@Column(name = "radar_range")
	private double radarRange;

	@Column(name = "cargo_capacity")
	private int cargoCapacity;

	private int mass;

	private String image;

	private String description;

	private int cost;

	public int getId() {
		return id;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public EmpireType getEmpire() {
		return empire;
	}

	public void setEmpire(EmpireType empire) {
		this.empire = empire;
	}

	public ShipType getType() {
		return type;
	}

	public void setType(ShipType type) {
		this.type = type;
	}

	public int getSpeedWarp() {
		return speedWarp;
	}

	public void setSpeedWarp(int speedWarp) {
		this.speedWarp = speedWarp;
	}

	public int getSpeedVelocity() {
		return speedVelocity;
	}

	public void setSpeedVelocity(int speedVelocity) {
		this.speedVelocity = speedVelocity;
	}

	public double getTimeToWarp() {
		return timeToWarp;
	}

	public void setTimeToWarp(double timeToWarp) {
		this.timeToWarp = timeToWarp;
	}

	public double getRadarRange() {
		return radarRange;
	}

	public void setRadarRange(double radarRange) {
		this.radarRange = radarRange;
	}

	public int getCargoCapacity() {
		return cargoCapacity;
	}

	public void setCargoCapacity(int cargoCapacity) {
		this.cargoCapacity = cargoCapacity;
	}

	public int getMass() {
		return mass;
	}

	public void setMass(int mass) {
		this.mass = mass;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Ship [id=" + id + ", name=" + name + ", empire=" + empire + ", type=" + type + ", speedWarp="
				+ speedWarp + ", speedVelocity=" + speedVelocity + ", timeToWarp=" + timeToWarp + ", radarRange="
				+ radarRange + ", cargoCapacity=" + cargoCapacity + ", mass=" + mass + ", image=" + image
				+ ", description=" + description + ", cost=" + cost + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + cargoCapacity;
		result = prime * result + cost;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((empire == null) ? 0 : empire.hashCode());
		result = prime * result + id;
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + mass;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(radarRange);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + speedVelocity;
		result = prime * result + speedWarp;
		temp = Double.doubleToLongBits(timeToWarp);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ship other = (Ship) obj;
		if (cargoCapacity != other.cargoCapacity)
			return false;
		if (cost != other.cost)
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (empire != other.empire)
			return false;
		if (id != other.id)
			return false;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (mass != other.mass)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Double.doubleToLongBits(radarRange) != Double.doubleToLongBits(other.radarRange))
			return false;
		if (speedVelocity != other.speedVelocity)
			return false;
		if (speedWarp != other.speedWarp)
			return false;
		if (Double.doubleToLongBits(timeToWarp) != Double.doubleToLongBits(other.timeToWarp))
			return false;
		if (type != other.type)
			return false;
		return true;
	}

}
