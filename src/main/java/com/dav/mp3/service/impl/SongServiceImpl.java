package com.dav.mp3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dav.mp3.entity.Song;
import com.dav.mp3.repository.SongRepository;
import com.dav.mp3.service.SongService;

@Service
@Transactional
public class SongServiceImpl implements SongService{

	private static final int PAGE_SIZE = 20;

	@Autowired
	private SongRepository songRepository;
	
	
	@Override
	public void save(Song song) {
		// TODO Auto-generated method stub
		songRepository.save(song);
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		songRepository.delete(id);
	}

	@Override
	public List<Song> findAll(int page) {
		// TODO Auto-generated method stub
		PageRequest request = new PageRequest(page - 1, PAGE_SIZE, Sort.Direction.DESC, "id");
		return songRepository.findAll(request).getContent();
	}

}
