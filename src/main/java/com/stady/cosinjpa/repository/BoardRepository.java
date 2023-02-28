package com.stady.cosinjpa.repository;

import com.stady.cosinjpa.model.Board;
import com.stady.cosinjpa.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BoardRepository extends JpaRepository<Board, Long>, QuerydslPredicateExecutor<Board> {

    List<Board> findByTitle(String title);
    List<Board> findByTitleOrContent(String title, String Content);

    Page<Board> findByTitleContainingOrContentContaining(String title, String Content, Pageable pageable);
    Page<Board> findByTitleContainingOrContentContainingOrderByIdDesc(String title, String Content, Pageable pageable);
//    Page<Board> findByManagerIdOrderByIdDesc(String boardManager, String title, String Content, Pageable pageable);

    @Query("select u from Board u where u.boardManager.id = :manager")
    Page<Board> findByManagerIdOrderByIdDesc(@Param("manager") String boardManager, Pageable pageable);
}