package com.example.BookMyShow.repository;

import com.example.BookMyShow.models.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CityRepo extends JpaRepository<City , Integer> { }
