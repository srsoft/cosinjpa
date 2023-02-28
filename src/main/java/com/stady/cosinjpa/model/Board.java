package com.stady.cosinjpa.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Data
public class Board extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long managerId;

    @NotEmpty
    @Size(min=2, max=30, message = "제목은 2자이상 30자 이하입니다.")
    private String title;

    @NotEmpty
    @Size(min=2, max=300, message = "내용은 2자이상 300자 이하입니다.")
    private String content;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @JsonIgnore
    private User user;

//    @ManyToOne
//    @JoinColumn(name = "manager_id", referencedColumnName = "id")
//    @JsonIgnore
//    private BoardManager boardManager;
}
