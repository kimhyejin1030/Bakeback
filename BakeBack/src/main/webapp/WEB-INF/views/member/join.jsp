<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/resources/css/join.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
</head>
<body>

	<div class="gnb">
		<div class="gnb_inner">
			<div class="login_area">
        		<div><a href="/board/login">로그인</a></div>
        		<div><a href="/member/join">회원가입</a></div>
        	</div>
        	<!-- 로고 & 다른 컨텐츠 추가 -->
        </div>
    </div>

	<div class="container content">
	     <div class="signup-container">
	     	<form id="join_form" method="post">
		        <div class="signup-box">
			        <div class="signup-geul">
			            <h1>회원가입</h1>
			            <p>회원이 되어 다양한 혜택을 경험해 보세요!</p>
			        </div>    
		            <form>
		                <div class="form-group">
		                    <label for="name">이름</label>
		                    <input type="text" id="name" name="memberName" placeholder="이름을 입력해 주세요">
		                </div>
		                
		                <div class="form-group">
		                    <label for="user-id">아이디</label>
		                    <div class="input-with-btn">
		                        <input type="text" id="user-id" name="memberId" placeholder="아이디 입력 (6~20자)">
		                        <button type="button" class="check-btn">중복 확인</button>
		                    </div>
		                </div>
		                
		                <div class="form-group">
		                    <label for="password">비밀번호</label>
		                    <div class="input-with-error">
		                        <input type="password" id="password" name="memberPw" placeholder="문자, 숫자, 특수문자 포함 8~20자">
		                    </div>
		                </div>
		                
		                <div class="form-group">
		                    <label for="password-confirm">비밀번호 확인</label>
		                    <div class="input-with-error">
		                        <input type="password" id="password-confirm" placeholder="비밀번호 재입력">
		                    </div>
		                </div>
		                
		                <div class="form-group">
		                    <label for="phone">전화번호</label>
		                    <input type="text" id="phone" name="phoneNumber" placeholder="휴대폰 번호 입력 ('-' 제외 11자리 입력)">
		                </div>
		                
		                <div class="form-group">
		                    <label for="email">이메일 주소</label>
		                    <div class="email-group">
		                        <input type="text" id="email" name="memberEmail" placeholder="이메일 주소">
		                        <span>@</span>
		                        <input type="text" id="email-domain-display">
		                        <select id="email-domain" onchange="updateEmailDomain()">
		                            <option value="">선택</option>
		                            <option value="naver.com">naver.com</option>
		                            <option value="gmail.com">gmail.com</option>
		                            <option value="daum.net">daum.net</option>
		                            <option value="hotmail.com">hotmail.com</option>
		                        </select>
		                    </div>
		                </div>
		                
		                
						<div class="form-group">
						    <label for="address">주소</label>
						    
						    <div class="input-with-search-btn">
						        <input type="text" id="zipcode" name="memberPost" placeholder="우편번호 입력">
						        <button type="button" class="zipcode-btn">우편번호 검색</button>
						    </div>
						
						    <input type="text" id="address" name="memberAddr1" placeholder="주소 입력" style="margin-top: 10px;">
						    <input type="text" id="detailed-address" name="memberAddr2" placeholder="상세주소 입력" style="margin-top: 10px;">
						</div>
		
		                <div class="form-actions">
		                    <button type="submit" class="submit-btn">가입하기</button>
		                    <button type="button" class="cancel-btn">가입취소</button>
		                </div>
		            </form>
		        </div>
	        </form>
	    </div>
	 </div>
    

    
    
   <script>
        function updateEmailDomain() {
            var domainSelect = document.getElementById("email-domain");
            var domainDisplay = document.getElementById("email-domain-display");
            domainDisplay.value = domainSelect.value;
        }
        
        $(document).ready(function(){
        	// 회원가입 버튼(회원가입 기능 작동)
        	$(".submit-btn").click(function(){
        		$("#join_form").attr("action","/member/join");
        		$("#join_form").submit();
        	});
        });
    </script>



</body>
</html> 