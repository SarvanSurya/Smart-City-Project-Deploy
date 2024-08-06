package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Contactus;

public interface ContactRepository extends JpaRepository<Contactus,Integer>{

}
