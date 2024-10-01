package com.bakeback.persistence;

import com.bakeback.domain.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void insertMember(MemberVO member);

}
