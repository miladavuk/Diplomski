package com.miladavukovic.diplomski.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.miladavukovic.diplomski.model.User;


public interface UserRepository extends JpaRepository<User,String>{

}
