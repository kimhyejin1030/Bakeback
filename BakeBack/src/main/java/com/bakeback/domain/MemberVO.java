package com.bakeback.domain;

public class MemberVO {
	
	// 회원명
	private String memberName;
	
	// 회원 아이디
	private String memberId;
	
	// 회원 비밀번호
	private String memberPw;
	
	// 회원 휴대전화번호
	private String phoneNumber;
	
	// 회원 이메일
	private String memberEmail;
	
	// 회원 우편번호
	private String memberPost;
	
	// 회원 기본 주소
	private String memberAddr1;
	
	// 회원 상세 주소
	private String memberAddr2;
		
	// 관리자 구분(0:일반 사용자, 1:관리자)
	private int adminCk;

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPost() {
		return memberPost;
	}

	public void setMemberPost(String memberPost) {
		this.memberPost = memberPost;
	}

	public String getMemberAddr1() {
		return memberAddr1;
	}

	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}

	public String getMemberAddr2() {
		return memberAddr2;
	}

	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	@Override
	public String toString() {
		return "MemberVO [memberName=" + memberName + ", memberId=" + memberId + ", memberPw=" + memberPw
				+ ", phoneNumber=" + phoneNumber + ", memberEmail=" + memberEmail + ", memberPost=" + memberPost
				+ ", memberAddr1=" + memberAddr1 + ", memberAddr2=" + memberAddr2 + ", adminCk=" + adminCk + "]";
	}


}
