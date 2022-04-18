package com.skilldistillery.countries.data;

import java.util.List;

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
	public List<Country> findByKeyword(String keyword) {
		String query ="SELECT c From Country c WHERE c.name LIKE :keyword OR c.capital LIKE :keyword2";
		List<Country> keys =em.createQuery(query).setParameter("keyword", "%"+keyword+"%").setParameter("keyword2", "%"+keyword+"%").getResultList();
		return keys;
	}


		
	
	
	@Override
	public Country addCountry(Country country) {
	
		
		System.out.println("BEFORE: " + country);
		
		em.persist(country);
		
		System.out.println("AFTER: " + country);
		
		
		return country;
	}
	@Override
	public boolean deleteCountry(int countryId) {
		boolean wasDeleted = false;
		
	//	System.out.println("BEFORE: " + countryId);
		Country c = em.find(Country.class, countryId);
		em.remove(c);
		em.flush();
		wasDeleted = !em.contains(c);
	//	System.out.println("AFTER: " + country);
		
		
		return wasDeleted;
	}





	@Override
	public List<Country> showAll() {
		String query = "SELECT c from Country c";
		List<Country> cl = em.createQuery(query, Country.class).getResultList();
		
				return cl;
	}
	
	
	

}
