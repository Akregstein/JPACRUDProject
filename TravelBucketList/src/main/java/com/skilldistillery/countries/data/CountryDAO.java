package com.skilldistillery.countries.data;

import com.skilldistillery.countries.entities.Country;

public interface CountryDAO {
Country findById(int countryId);
Country addCountry(Country country);
Country deleteCountry(Country country);


}
