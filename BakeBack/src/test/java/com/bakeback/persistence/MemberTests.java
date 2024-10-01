package com.bakeback.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bakeback.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberTests {
	
	@Autowired
	private MemberDAO memberdao;
	/*
	@Test
	public void insertMember() throws Exception{
		MemberVO member = new MemberVO();
		
        member.setMemberId("test");
        member.setMemberPw("password");
        member.setMemberName("Test User");
        member.setMemberEmail("testuser@example.com");
        member.setMemberPost("12345");
        member.setMemberAddr1("123 Test St");
        member.setMemberAddr2("Suite 100");
        member.setPhoneNumber("111-111");
        member.setAdminCk(0); // 일반 사용자로 설정
        
        memberdao.insertMember(member);

        log.info("Member inserted: " + member);
		
		
	}
	*/
	
	@Test
	public void memberIdCk() throws Exception{
		String id="test1"; // 존재하는 아이디
		String id2="test4"; // 존재하지 않는 아이디
		memberdao.idCheck(id);
		memberdao.idCheck(id2);
	}

}
