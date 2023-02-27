package com.stady.cosinjpa.controller;

import com.stady.cosinjpa.model.BoardManager;
import com.stady.cosinjpa.repository.BoardManagerRepository;
import lombok.extern.slf4j.Slf4j;
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
@RequestMapping("/boardmanager")
@Slf4j
public class BoardManagerController {

    @Autowired
    private BoardManagerRepository boardmanagerRepository;

    @GetMapping("/list")
    public String list(Model model, @PageableDefault(size = 10) Pageable pageable, @RequestParam(required = false, defaultValue = "") String searchText) {
        Page<BoardManager> boardmanagers = boardmanagerRepository.findByTitleContainingOrderByIdDesc(searchText, pageable);

        int startPage = Math.max(1, boardmanagers.getPageable().getPageNumber() - 4);
        int endPage = Math.min(boardmanagers.getTotalPages(), boardmanagers.getPageable().getPageNumber() + 4);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("boardmanagers", boardmanagers);
        log.debug("model: {}", model);
        return "boardmanager/list";
    }
    
}
