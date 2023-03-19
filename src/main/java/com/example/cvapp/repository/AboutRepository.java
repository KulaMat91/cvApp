package com.example.cvapp.repository;

import com.example.cvapp.model.AboutModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AboutRepository extends JpaRepository<AboutModel, Long> {

}
