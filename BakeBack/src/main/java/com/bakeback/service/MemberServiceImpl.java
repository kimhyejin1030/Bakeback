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

	// 아이디 중복 검사
	@Override
	public int idCheck(String memberId) throws Exception {

		return memberdao.idCheck(memberId);
	}
	
	

}
