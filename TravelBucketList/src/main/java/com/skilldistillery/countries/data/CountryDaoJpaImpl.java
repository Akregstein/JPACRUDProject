package com.skilldistillery.countries.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.countries.entities.Country;

@Service
@Transactional
public class CountryDaoJpaImpl implements CountryDAO {

	
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Country findById(int countryId) {

		return em.find(Country.class, countryId);
	}


		
	
	
	@Override
	public Country addCountry(Country country) {
	
		
		//start a transaction
	//	em.getTransaction().begin();
		
		System.out.println("BEFORE: " + country);
		
		em.persist(country);
		
		System.out.println("AFTER: " + country);
		
		//close
		//em.getTransaction().commit();
		//em.close();
		
		return country;
	}
	
	

}
