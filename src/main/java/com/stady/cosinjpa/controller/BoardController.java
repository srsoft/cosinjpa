package com.stady.cosinjpa.controller;

import com.stady.cosinjpa.model.Board;
import com.stady.cosinjpa.model.BoardManager;
import com.stady.cosinjpa.model.QBoard;
import com.stady.cosinjpa.repository.BoardManagerRepository;
import com.stady.cosinjpa.repository.BoardRepository;
import com.stady.cosinjpa.service.BoardService;
import com.stady.cosinjpa.validator.BoardValidator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.util.StringUtils;

import javax.validation.Valid;
import java.util.List;
import java.util.function.Predicate;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {

    @Autowired
    private BoardRepository boardRepository;

    @Autowired
    private BoardManagerRepository boardManagerRepository;

    @Autowired
    private BoardValidator boardValidator;

    @Autowired
    private BoardService boardService;

    @GetMapping("/list")
    public String list(Model model, @PageableDefault(size = 10) Pageable pageable, @RequestParam(required = false, defaultValue = "") String boardManager, @RequestParam(required = false, defaultValue = "") String searchText) {
        //Page<Board> boards = boardRepository.findAll(pageable);
        //boards.getTotalElements(); // 갯수 가져오기

        Page<Board> boards = null;
        if (StringUtils.isEmpty(boardManager)) {
            boards = boardRepository.findByTitleContainingOrContentContainingOrderByIdDesc(searchText, searchText, pageable);
        } else {
            boards = boardRepository.findByManagerIdOrderByIdDesc(boardManager, pageable);
        }

        List<BoardManager> boardManagers = boardManagerRepository.findAll();

        int startPage = Math.max(1, boards.getPageable().getPageNumber() - 4);
        int endPage = Math.min(boards.getTotalPages(), boards.getPageable().getPageNumber() + 4);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("boards", boards);
        model.addAttribute("boardsManager", boardManagers);
        log.debug("model: {}", model);
        return "board/list";
    }

    @GetMapping("/form")
    public String form(Model model, @RequestParam(required = false) Long id) {
        if (id == null) {
            model.addAttribute("board", new Board());
        } else {
            Board board = boardRepository.findById(id).orElse(null);
            model.addAttribute(board);
        }
        return "board/form";
    }

    @PostMapping("/form")
    public String postForm(@Valid Board board, BindingResult bindingResult, Authentication authentication) {
        boardValidator.validate(board, bindingResult);
        if (bindingResult.hasErrors()) {
            return "board/form";
        }
        String username = authentication.getName();
        boardService.save(username, board);
        return "redirect:/board/list";
    }
}
