package com.bakeback.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.bakeback.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	// 의존성 주입
	@Inject
	private SqlSession sqlSession;
	
	// 네임스페이스
	private static final String namespace = "com.bakeback.mapper.MemberMapper";
	
	// 로거
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

	// 회원가입
	@Override
	public void insertMember(MemberVO member) {
		sqlSession.insert(namespace+".insertMember",member);
		
	}

	// 아이디 중복 검사
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return sqlSession.selectOne(namespace + ".idCheck",memberId);
	}
	
	

}
