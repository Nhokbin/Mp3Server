package com.dav.mp3.service;

import java.util.List;

import com.dav.mp3.entity.Song;

public interface SongService {
	
	
	void save(Song song);

	void delete(int id);
	
	List<Song> findAll(int page);
}
