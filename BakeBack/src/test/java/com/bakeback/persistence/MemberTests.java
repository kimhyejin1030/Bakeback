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
	/*
	@Test
	public void memberIdCk() throws Exception{
		String id="test1"; // 존재하는 아이디
		String id2="test4"; // 존재하지 않는 아이디
		memberdao.idCheck(id);
		memberdao.idCheck(id2);
	}*/
	

    /* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void memberLogin() throws Exception{
        
        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
        //member.setMemberId("test4");
       // member.setMemberPw("test4");
        
        /* 올바른 않은 아이디 비번 입력경우 */
       member.setMemberId("test1123");
        member.setMemberPw("test1321321");
        
        memberdao.memberLogin(member);
        System.out.println("결과 값 : " + memberdao.memberLogin(member));
        
    }

}
