package com.stady.cosinjpa.controller;

import com.stady.cosinjpa.model.User;
import com.stady.cosinjpa.repository.UserRepository;
import com.stady.cosinjpa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @GetMapping("/list")
    public String list(Model model, @PageableDefault(size = 10) Pageable pageable, @RequestParam(required = false, defaultValue = "") String searchText) {
        //Page<User> users = userRepository.findAll(pageable);
        //users.getTotalElements(); // 갯수 가져오기

        Page<User> users = userRepository.findByUsernameContainingOrderByIdDesc(searchText, pageable);

        int startPage = Math.max(1, users.getPageable().getPageNumber() - 4);
        int endPage = Math.min(users.getTotalPages(), users.getPageable().getPageNumber() + 4);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("users", users);
        return "user/list";
    }

    @GetMapping("/form")
    public String form(Model model, @RequestParam(required = false) Long id) {
        if (id == null) {
            model.addAttribute("user", new User());
        } else {
            User user = userRepository.findById(id).orElse(null);
            model.addAttribute(user);
        }
        return "user/form";
    }


}
