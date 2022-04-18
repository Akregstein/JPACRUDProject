package com.skilldistillery.countries.data;

import java.util.List;

import com.skilldistillery.countries.entities.Country;

public interface CountryDAO {
Country findById(int countryId);
Country addCountry(Country country);
boolean deleteCountry(int countryId);
List<Country>showAll();
public List<Country> findByKeyword(String keyword);


}
