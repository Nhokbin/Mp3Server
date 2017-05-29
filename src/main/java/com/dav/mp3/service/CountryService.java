package com.dav.mp3.service;

import com.dav.mp3.entity.Country;
import com.dav.mp3.entity.Song;

public interface CountryService {
	
	Country findById(int id);
	
	void save(Country country);

	void delete(int id);
}
