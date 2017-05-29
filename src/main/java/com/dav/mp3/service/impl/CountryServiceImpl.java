package com.dav.mp3.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dav.mp3.entity.Country;
import com.dav.mp3.repository.CountryRepository;
import com.dav.mp3.service.CountryService;

@Service
@Transactional
public class CountryServiceImpl implements CountryService{

	@Autowired
	private CountryRepository countryRepository;
	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Country country) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Country findById(int id) {
		// TODO Auto-generated method stub
		return countryRepository.findOne(id);
	}

}
