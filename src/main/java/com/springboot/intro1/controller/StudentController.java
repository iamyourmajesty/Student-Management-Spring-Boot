package com.springboot.intro1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.intro1.dto.StudentDto;

@RestController
public class StudentController {

    @GetMapping("/student")
    public StudentDto getStudent() {
        return new StudentDto(1, "John Doe", "alpha@info.com" );
        
    }
}
