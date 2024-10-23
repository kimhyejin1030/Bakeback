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
		                <div class="form-group">
		                    <label for="name">이름</label>
		                    <input type="text" class="user_input" id="name" name="memberName" placeholder="이름을 입력해 주세요">
		                	<span class="final_name_ck">이름을 입력해주세요</span>
		                </div>
		                
		                <div class="form-group">
		                    <label for="user-id">아이디</label>
		                    <div class="input-with-btn">
		                        <input type="text" class="id_input" id="user-id" name="memberId" placeholder="아이디 입력 (6~20자)">
		                        <button type="button" id="checkDuplicate" class="check-btn">중복 확인</button>
		                        <span id="idCheckMessage" class="error-message"></span>
		                        <span class="final_id_ck">아이디를 입력해주세요</span>
		                    </div>
		                </div>
		                
		                <div class="form-group">
		                    <label for="password">비밀번호</label>
		                    <div class="input-with-error">
		                        <input type="password" class="pw_input" id="password" name="memberPw" placeholder="문자, 숫자, 특수문자 포함 8~20자">
		                    </div>
		                    <span class="final_pw_ck">비밀번호를 입력해주세요</span>
		                </div>
		                
		                <div class="form-group">
		                    <label for="password-confirm">비밀번호 확인</label>
		                    <div class="input-with-error">
		                        <input type="password" class="pwck_input" id="password-confirm" placeholder="비밀번호 재입력">
		                    </div>
		                    <span class="final_pwck_ck">비밀번호 확인을 입력해주세요</span>
		                    <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
		                    <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
		                </div>
		                
		                <div class="form-group">
		                    <label for="phone">전화번호</label>
		                    <input type="text" id="phone" name="phoneNumber" placeholder="휴대폰 번호 입력 ('-' 제외 11자리 입력)">
		                </div>
		                
		                <div class="form-group">
		                    <label for="email">이메일 주소</label>
		                    <div class="email-group">
		                        <input type="text" class="mail_input" id="email" name="emailPrefix" placeholder="이메일 주소">
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
		                    <span class="final_mail_ck">이메일을 입력해주세요</span>
		                </div>
		                <div class="input-with-search-btn">
		                	<div class="mail_check_input_box" id="mail_check_input_box_false">
								<input class="mail_check" type="text" disabled="disabled">
							</div>
							<div class="mail_check_button">
								<button type="button" class="mailcode-btn">인증번호 전송</button>
							</div>							
						</div>
						
						<div class="check_text">
							<span id="mail_check_input_box_warn"></span>
						</div>
		                
		                <!-- 숨겨진 input 필드 (이메일 전체 값을 담아서 전송할 예정) -->
		                <input type="hidden" id="fullEmail" name="memberEmail">
		                
		                
						<div class="form-group">
						    <label for="address">주소</label>
						    
						    <div class="input-with-search-btn">
						        <input type="text" id="zipcode" name="memberPost" class="address_input_1" placeholder="우편번호 입력" readonly="readonly">
						        <button type="button" class="zipcode-btn" onclick="execution_daum_address()">우편번호 검색</button>
						    </div>
						
						    <input type="text" id="address" name="memberAddr1" class="address_input_2" placeholder="주소 입력" style="margin-top: 10px;" readonly="readonly">
						    <input type="text" id="detailed-address" name="memberAddr2" class="address_input_3" placeholder="상세주소 입력" style="margin-top: 10px;" readonly="readonly">
							<span class="final_addr_ck">주소를 입력해주세요</span>
						</div>
		
		                <div class="form-actions">
		                    <button type="submit" class="submit-btn">가입하기</button>
		                    <button type="button" class="cancel-btn">가입취소</button>
		                </div>
		        </div>
	        </form>
	    </div>
	 </div>
    

    
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
        function updateEmailDomain() {
            var domainSelect = document.getElementById("email-domain");
            var domainDisplay = document.getElementById("email-domain-display");
            domainDisplay.value = domainSelect.value;
        }
        
        var code = "";		// 이메일 전송 인증번호 저장위한 코드
        
        /* 유효성 검사 통과유무 변수 */
        var nameCheck = false;			// 이름
        var idCheck = false;			// 아이디
        var idckCheck = false;			// 아이디 중복 검사
        var pwCheck = false;			// 비번
        var pwckCheck = false;			// 비번 확인
        var pwckcorCheck = false;		// 비번 확인 일치 확인
        var mailCheck = false;			// 이메일
        var mailnumCheck = false; 		// 이메일 인증번호 확인
        var addressCheck = false;		// 주소
        
        $(document).ready(function(){
        	// 회원가입 버튼(회원가입 기능 작동)
        	$(".submit-btn").click(function(){
        		
        		/* 입력값 변수 */
        		var id = $('.id_input').val();				// id 입력란
        		var pw = $('.pw_input').val();				// 비밀번호 입력란
        		var pwck = $('.pwck_input').val();			// 비밀번호 확인 입력란
        		var name = $('.user_input').val();			// 이름 입력란
        		var mail = $('.mail_input').val();			// 이메일 입력란
        		var addr = $('.address_input_3').val();		// 주소 입력란
        		// $("#join_form").attr("action","/member/join");
        		// $("#join_form").submit();
        		
        		/* 이름 유효성 검사 */
        		if(name == ""){
        			$('.final_name_ck').css('display','block');
        			nameCheck = false;
        		}else{
        			$('.final_name_ck').css('display','none');
        			nameCheck = true;
        		}
        		
        		/* 아이디 유효성 검사 */
        		if(id == ""){
        			$('.final_id_ck').css('display','block');
        			idCheck = false;
        		}else {
        			$('.final_id_ck').css('display','none');
        			idCheck = true;
        		}
        		
        		/* 비밀번호 유효성 검사 */
        		if(pw == ""){
        			$('.final_pw_ck').css('display','block');
        			pwCheck = false;
        		}else {
        			$('.final_pw_ck').css('display','none');
        			pwCheck = true;
        		}
        		
        		/* 비밀번호 확인 유효성 검사 */
        		if(pwck == ""){
        			$('.final_pwck_ck').css('display','block');
        			pwckCheck = false;
        		}else {
        			$('.final_pwck_ck').css('display','none');
        			pwckCheck = true;
        		}
        		
        		/* 이메일 유효성 검사 */
        		if(mail == ""){
        			$('.final_mail_ck').css('display','block');
        			mailCheck = false;
        		}else{
        			$('.final_mail_ck').css('display','none');
        			mailCheck = true;
        		}
        		
        		/* 주소 유효성 검사 */
        		if(addr == ""){
        			$('.final_addr_ck').css('display','block');
        			addressCheck = false;
        		}else{
        			$('.final_addr_ck').css('display','none');
        			addressCheck = true;
        		}
        		

        		/* 최종 유효성 검사 */
        		if (nameCheck && idCheck && pwCheck && pwckCheck && mailCheck && addressCheck) {
        		    $("#join_form").attr("action", "/member/join");
        		    $("#join_form").submit();
        		}
                
                return false;
        		
        	});
        });
        	
       	// 중복 확인 버튼 클릭 이벤트 처리
       	$('#checkDuplicate').click(function() {
       		
       		 console.log("중복 확인 버튼 클릭됨"); 
       		
       		var memberId = $('#user-id').val();
       		
               $.ajax({
                   url: '/member/memberIdCk',
                   method: 'POST',
                   data: { memberId: memberId },		// '컨트롤에 넘길 데이터 이름' : '데이터(#user_id에 입력되는 값)'
                   dataType: 'text',  // 또는 'json' 만약 서버에서 JSON을 반환하는 경우
                   success: function(result) {
                       if (result === 'success') {  // 여기서 response가 'success'로 오는지 확인
                           $('#idCheckMessage').text('사용 가능한 아이디입니다.').css('color', 'green');
                       	idCheck = true;
                       } else {
                           $('#idCheckMessage').text('이미 사용 중인 아이디입니다.').css('color', 'red');
                           idCheck = false;
                       }
                   },
                   error: function() {
                       $('#idCheckMessage').text('서버 오류가 발생했습니다. 다시 시도해주세요.').css('color', 'red');
                   }
               });
       	});
	
        
        
        /* 다음 주소 연동 */
        function execution_daum_address(){
        	
        	new daum.Postcode({
        		oncomplete: function(data){
        			// 팝업에서 검색결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분입니다.
        			
        			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 주소변수 문자열과 참고항목 문자열 합치기
                        addr += extraAddr;
                    
                    } else {
                    	addr += '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $(".address_input_1").val(data.zonecode);
					$(".address_input_2").val(addr);
                    // 커서를 상세주소 필드로 이동한다.
					$(".address_input_3").attr("readonly",false);
					$(".address_input_3").focus();
        		}
        	}).open();
        }
        
	     /* 이메일 앞부분과 도메인 결함하여 값 전송 */
	     // 도메인 선택 시 표시하는 함수
	     function updateEmailDomain() {
	     	// 선택된 도메인 가져오기
	     	const emailDomain = document.getElementById("email-domain").value;
	     	// 도메인 입력 필드에 값 설정
	     	document.getElementById("email-domain-display").value = emailDomain;
	     }
	
	     // 폼 제출 시 전체 이메일 주소를 결합하는 함수
	     function submitForm() {
	     	const emailPrefix = document.getElementById("email").value; // 이메일 앞부분
	     	const emailDomain = document.getElementById("email-domain-display").value; // 선택된 도메인
	     	
	     	// 전체 이메일 주소 결합
	     	const fullEmail = emailPrefix+ "@" + emailDomain;
	     	
	     	// 숨겨진 input에 전체 이메일 주소 설정
	     	document.getElementById("fullEmail").value = fullEmail;
	     }
	
	     // 폼 제출 시 submitForm 함수 호출
	     document.querySelector('form').addEventListener('submit',function(e){
	     	submitForm();
	     });
	     
	     /* 인증번호 이메일 전송 */
	     $(".mailcode-btn").click(function(){
	    	 
	    	submitForm();
	    	 
	    	var email = $("#fullEmail").val();	// 입력한 이메일
	    	var checkBox = $(".mail_check");	// 인증번호 입력란	
	    	var boxWrap = $(".mail_check_input_box");	// 인증번호 입력란 박스
	    	 
    		$.ajax({
    			
    			type:"GET",
    			url:"mailCheck?email="+email,
    			success:function(data){
    				
    				/* console.log("data : " + data); */
    				checkBox.attr("disabled",false);
    				boxWrap.attr("id", "mail_check_input_box_true");
    				code = data;
    				
    			}
    		});
	    	 
	     });
	     
	     /* 인증번호 비교 */
	     $(".mail_check").blur(function(){
	    	 
	    	 var inputCode = $(".mail_check").val();	// 입력코드
	    	 var checkResult = $("#mail_check_input_box_warn"); // 비교 결과
	    	 
	    	 if(inputCode == code){									// 일치할 경우
	    		 checkResult.html("인증번호가 일치합니다");
	    		 checkResult.attr("class","correct");
	    		 mailnumCheck = true;
	    	 }else {												// 불일치할 경우
	    		 checkResult.html("인증번호를 다시 확인해주세요");
	    		 checkResult.attr("class","incorrect");
	    		 mailnumCheck = false;
	    	 }
	    	 
	     });
	     
	     /* 비밀번호 확인 일치 유효성 검사 */
	     $('.pwck_input').on("propertychange change keyup paste input", function(){
	    		
	    		var pw = $('.pw_input').val();
	    		var pwck = $('.pwck_input').val();
	    		$('.final_pwck_ck').css('display', 'none');
	    		
	    		if(pw == pwck){
	    			$('.pwck_input_re_1').css('display','block');
	    			$('.pwck_input_re_2').css('display','none');
	    			pwckcorCheck = true;
	    		}else{
	    			$('.pwck_input_re_1').css('display','none');
	    			$('.pwck_input_re_2').css('display','block');
	    			pwckcorCheck = false;
	    		}
	    		
	    		
	    	});



	     
    </script>



</body>
</html> 