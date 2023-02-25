package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.User;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

//    @EntityGraph(attributePaths = { "boards" })
//    @Override
//    List<User> findAll();

    User findByUsername(String username);

}
