package com.dav.mp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dav.mp3.entity.Song;

@Repository
public interface SongRepository  extends JpaRepository<Song, Integer> {

}
