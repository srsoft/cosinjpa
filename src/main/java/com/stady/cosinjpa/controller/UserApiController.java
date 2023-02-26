package com.stady.cosinjpa.controller;

//import com.querydsl.core.types.Predicate;
import com.querydsl.core.types.Predicate;
import com.stady.cosinjpa.model.Board;
//import com.stady.cosinjpa.model.QUser;
import com.stady.cosinjpa.model.QUser;
import com.stady.cosinjpa.model.User;
import com.stady.cosinjpa.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.util.StringUtils;

import java.util.List;

//import static com.stady.cosinjpa.model.QUser.user;

@RestController
@RequestMapping("/api")
@Slf4j
public class UserApiController {

    @Autowired
    private UserRepository repository;

    @GetMapping("/users")
    Iterable<User> all(@RequestParam(required = false) String method, @RequestParam(required = false) String text) {
        Iterable<User> users = null;
        if ("query".equals(method)) {
            users = repository.findByUsernameQuery(text);
        } else if ("nativeQuery".equals(method)) {
            users = repository.findByUsernameNativeQuery(text);
        } else if ("querydsl".equals(method)) {
            QUser user = QUser.user;
            Predicate predicate = user.username.contains(text)
                    .or(user.username.eq("hello"));
            users = repository.findAll(predicate);
        } else if ("querydslCustom".equals(method)) {
            users = repository.findByUsernameCustom(text);
        } else if ("jdbc".equals(method)) {
            users = repository.findByUsernameJdbc(text);
        } else {
            users = repository.findAll();
            //log.debug("getBoards().size() : {}", users.get(0).getBoards().size());
        }
        return users;
    }

    @PostMapping("/users")
    User newUser(@RequestBody User newUser) {
        return repository.save(newUser);
    }

    // Single item
    @GetMapping("/users/{id}")
    User one(@PathVariable Long id) {
        return repository.findById(id).orElse(null);
    }

    @PutMapping("/users/{id}")
    User replaceUser(@RequestBody User newUser, @PathVariable Long id) {

        return repository.findById(id)
                .map(user -> {
                    //user.setBoards(newUser.getBoards());
                    user.getBoards().clear();
                    user.getBoards().addAll(newUser.getBoards());
                    for (Board board : user.getBoards()) {
                        board.setUser(user);
                    }
                    return repository.save(user);
                })
                .orElseGet(() -> {
                    newUser.setId(id);
                    return repository.save(newUser);
                });
    }

    @DeleteMapping("/users/{id}")
    void deleteUser(@PathVariable Long id) {
        repository.deleteById(id);
    }

}
