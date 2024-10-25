package com.bakeback.persistence;

import com.bakeback.domain.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void insertMember(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String memberId) throws Exception;
	
	// 로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;

}
