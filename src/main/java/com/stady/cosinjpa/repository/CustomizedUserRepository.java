package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.User;

import java.util.List;

public interface CustomizedUserRepository {
    List<User> findByUsernameCustom(String username);

    List<User> findByUsernameJdbc(String username);
}
