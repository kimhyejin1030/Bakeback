package com.bakeback.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bakeback.domain.MemberVO;
import com.bakeback.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO memberdao;

	// 회원가입
	@Override
	public void register(MemberVO member) throws Exception {
		memberdao.insertMember(member);
		
	}
	
	

}
