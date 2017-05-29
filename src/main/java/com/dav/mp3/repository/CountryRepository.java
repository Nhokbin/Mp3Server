package com.dav.mp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dav.mp3.entity.Country;

public interface CountryRepository extends JpaRepository<Country, Integer> {

}
