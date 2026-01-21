package com.openshift.from.zero.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "todo")
@NoArgsConstructor
public class Todo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Getter
    @Setter
    private String description;

    @Getter
    @Setter
    private boolean done;

    public Todo(String description, boolean done) {
        this.description = description;
        this.done = done;
    }
}