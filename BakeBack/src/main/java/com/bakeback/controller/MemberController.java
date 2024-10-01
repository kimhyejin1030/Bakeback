package com.bakeback.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bakeback.domain.MemberVO;
import com.bakeback.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("회원가입 페이지 진입");
				
	} // joinGET() 종료
	
	
	/* 회원가입 처리 */
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {
		logger.info("join POST ★★★★★★");
		
		memberService.register(member);
		
		return "redirect:/main";
		
	} // joinPOST() 종료
	
	
	/* 아이디 중복 검사 */
	@RequestMapping(value="/memberIdCk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdCkPOST(String memberId) throws Exception {
		
		logger.info("memberIdCk()진입 : " + memberId);
		
		int result = memberService.idCheck(memberId);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			return "fail"; // 중복 아이디 존재
		}else {
			return "success"; // 중복 아이디 X
		}
		
	} // memberIdCkPOST() 종료
	
	/* 로그인 페이지 이동 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		logger.info("로그인 페이지 진입");
		
	} // loginGET() 종료

}
