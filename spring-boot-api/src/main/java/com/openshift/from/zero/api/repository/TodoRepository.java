package com.openshift.from.zero.api.repository;

import com.openshift.from.zero.api.entity.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo, Long> {
}
