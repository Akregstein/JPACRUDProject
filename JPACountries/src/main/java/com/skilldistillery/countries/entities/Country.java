package com.skilldistillery.countries.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Country {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String capital;
	
	private Integer population;
	
	private String greeting;
	@Column(name = "must_try_dish")
	private String mustTryDish;
	
	private String language;
	
	private String currency;
	@Column(name = "highest_elevation")
	private Integer highestElevation;
	
	

	public Country() {
		super();
	}

	
	public String getCapital() {
		return capital;
	}


	public void setCapital(String capital) {
		this.capital = capital;
	}





	public Integer getPopulation() {
		return population;
	}


	public void setPopulation(Integer population) {
		this.population = population;
	}


	public Integer getHighestElevation() {
		return highestElevation;
	}


	public void setHighestElevation(Integer highestElevation) {
		this.highestElevation = highestElevation;
	}


	public String getGreeting() {
		return greeting;
	}


	public void setGreeting(String greeting) {
		this.greeting = greeting;
	}


	public String getMustTryDish() {
		return mustTryDish;
	}


	public void setMustTryDish(String mustTryDish) {
		this.mustTryDish = mustTryDish;
	}


	public String getLanguage() {
		return language;
	}


	public void setLanguage(String language) {
		this.language = language;
	}


	public String getCurrency() {
		return currency;
	}


	public void setCurrency(String currency) {
		this.currency = currency;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Country Id: " + id + ", name=" + name + ", capital=" + capital + ", population=" + population
				+ ", greeting=" + greeting + ", mustTryDish=" + mustTryDish + ", language=" + language + ", currency="
				+ currency + ", highestElevation=" + highestElevation + "]";
	}

}
