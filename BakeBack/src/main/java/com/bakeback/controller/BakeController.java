package com.bakeback.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BakeController {
	
	private static final Logger logger = LoggerFactory.getLogger(BakeController.class);
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}

}
