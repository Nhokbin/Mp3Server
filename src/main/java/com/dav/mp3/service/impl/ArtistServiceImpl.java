package com.dav.mp3.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dav.mp3.entity.Artist;
import com.dav.mp3.entity.Country;
import com.dav.mp3.repository.ArtistRepository;
import com.dav.mp3.service.ArtistService;
import com.dav.mp3.service.CountryService;

@Service
@Transactional
public class ArtistServiceImpl implements ArtistService{

	@Autowired
	private ArtistRepository artistRepository;

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Artist artist) {
		// TODO Auto-generated method stub
		artistRepository.save(artist);
	}

	@Override
	public Artist findByName(String name) {
		// TODO Auto-generated method stub
		return artistRepository.findByName(name);
	}

	

}
