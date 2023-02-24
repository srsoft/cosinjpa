package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
