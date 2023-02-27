package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.Board;
import com.stady.cosinjpa.model.BoardManager;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardManagerRepository extends JpaRepository<BoardManager, Long> {

    Page<BoardManager> findByTitleContainingOrderByIdDesc(String title, Pageable pageable);

}