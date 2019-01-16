package com.miladavukovic.diplomski.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.miladavukovic.diplomski.model.Activity;

@Controller
public class AppController {

	@GetMapping("/")
	public String showHome() {
		return "home";
	}

	@GetMapping("/newPlan")
	public String showNewPlan(Model model) {
		model.addAttribute("activity", new Activity());
		return "new-plan";
	}
}