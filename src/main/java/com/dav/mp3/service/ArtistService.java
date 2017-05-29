package com.dav.mp3.service;

import com.dav.mp3.entity.Artist;

public interface ArtistService {

	void save(Artist artist);

	void delete(int id);
	
	Artist findByName(String name);
}
