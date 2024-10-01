package com.bakeback.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public RedirectView redirectToMain() {
        logger.info("루트 페이지로 접근 - /main으로 리디렉션");
        return new RedirectView("/main");
    }
	
}
