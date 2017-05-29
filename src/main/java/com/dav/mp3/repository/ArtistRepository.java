package com.dav.mp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dav.mp3.entity.Artist;

public interface ArtistRepository extends JpaRepository<Artist, Integer> {
	
	Artist findByName(String name);

}
