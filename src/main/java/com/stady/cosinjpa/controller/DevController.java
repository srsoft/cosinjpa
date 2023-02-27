package com.stady.cosinjpa.controller;

import com.stady.cosinjpa.model.Board;
import com.stady.cosinjpa.repository.BoardRepository;
import com.stady.cosinjpa.service.BoardService;
import com.stady.cosinjpa.validator.BoardValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
@RequestMapping("/dev")
public class DevController {

    @GetMapping("/layout")
    public String dev() {
        return "dev/layout";
    }

}
