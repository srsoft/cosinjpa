package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.Board;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BoardRepository extends JpaRepository<Board, Long> {

    List<Board> findByTitle(String title);
    List<Board> findByTitleOrContent(String title, String Content);

    Page<Board> findByTitleContainingOrContentContaining(String title, String Content, Pageable pageable);
    Page<Board> findByTitleContainingOrContentContainingOrderByIdDesc(String title, String Content, Pageable pageable);

}