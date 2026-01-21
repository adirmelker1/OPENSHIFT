package com.openshift.from.zero.api.controller;

import com.openshift.from.zero.api.entity.Todo;
import com.openshift.from.zero.api.service.TodoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/todos")
@Tag(name = "Todo API")
public class TodoController {
    private final TodoService service;

    public TodoController(TodoService service) {
        this.service = service;
    }

    @GetMapping
    @Operation(summary = "Get all todos")
    public List<Todo> getTodos() {
        return service.findAll();
    }

    @PostMapping
    @Operation(summary = "Create new todo")
    public Todo createTodo(@RequestBody Todo todo) {
        return service.save(todo);
    }
}
