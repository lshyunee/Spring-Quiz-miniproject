package com.lee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lee.service.TvnService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/tvn/*")
public class TvnController {
	@Autowired
	private TvnService service;
	
	@GetMapping("/tvnHome")
	public void tvnHome() {
		
	}
	
	@GetMapping("/proverb")
	public void proverb(Model model) {
		log.info("get proverb");
		model.addAttribute("proverb", service.getP());
	}
	
	@GetMapping("/image")
	public void image(Model model) {
		log.info("get image");
		model.addAttribute("image", service.getI());
	}
	
	@GetMapping("/newWords")
	public void newword(Model model) {
		log.info("get word");
		model.addAttribute("word", service.getN());
	}
}
