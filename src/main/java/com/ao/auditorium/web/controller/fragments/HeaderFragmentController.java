package com.ao.auditorium.web.controller.fragments;

import com.ao.auditorium.model.course.CourseRepository;
import com.ao.auditorium.web.WebConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

@Controller
public class HeaderFragmentController {
    @Resource
    private CourseRepository courseRepository;

    @GetMapping("/fragments/header")
    public String showHeader(Model model) {
        model.addAttribute("courses", courseRepository.findAll());
        return WebConstants.Fragments.HEADER;
    }
}
