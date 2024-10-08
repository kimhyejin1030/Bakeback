package com.bakeback.controller;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	
	@Autowired
	private JavaMailSender mailSender;
	
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
	
	
	/* 이메일 인증 */
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{
		
		// 뷰(view)로부터 넘어온 데이터 확인
		logger.info("이메일 데이터 전송 확인 ★★★★★★★");
		logger.info("인증번호 : " + email);
		
		// 인증번호(난수) 생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 "+checkNum);
		
		// 이메일 보내기
		String setForm = "kimhyejin67@naver.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = 
				"안녕하세요, 베이크백에서 요청하신 인증번호를 보내드립니다."+
				"<br><br>"+
				"인증 번호는 " + checkNum + " 입니다." +
				"<br>" +
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setForm);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String num = Integer.toString(checkNum);
		
		return num;
		
	} // mailCheckGET() 종료
	
	/* 로그인 페이지 이동 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		logger.info("로그인 페이지 진입");
		
	} // loginGET() 종료

}
