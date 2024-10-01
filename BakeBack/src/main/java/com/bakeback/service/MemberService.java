package com.bakeback.service;

import com.bakeback.domain.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void register(MemberVO member) throws Exception;

}
