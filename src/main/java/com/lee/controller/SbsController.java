package com.lee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lee.service.SbsService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sbs/*")
public class SbsController {
	@Autowired
	private SbsService service;
	
	@GetMapping("/sbsHome")
	public void sbsHome() {
		
	}
	
	@GetMapping("/common")
	public void common(Model model) {
		log.info("get common");
		model.addAttribute("common", service.getC());
	}
	
	@GetMapping("/fourWord")
	public void fourword(Model model) {
		log.info("get fourword");
		model.addAttribute("fourword", service.getF());
	}
	
	@GetMapping("/unit")
	public void unit(Model model) {
		log.info("get unit");
		model.addAttribute("unit", service.getU());
	}

}
