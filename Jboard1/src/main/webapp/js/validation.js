/**
 * 
 */

		// Validation(유효성 검증)
		$(document).ready(function(){
			
			$('.resgister > form').sumbit(function(){
				
				if(!isUidOk){
					alert('아이디가 유효하지 않습니다. 다시 입력하세요.');
					return false; // 전송취소	
				}
				
				if(!isPassOk){
					alert('비밀번호가 유효하지 않습니다. 다시 입력하세요.');
					return false; // 전송취소	
				}
				
				if(!isNameOk){
					alert('이름이 유효하지 않습니다. 다시 입력하세요.');
					return false; // 전송취소	
				}
				
				if(!isNickOk){
					alert('닉네임이 유효하지 않습니다. 다시 입력하세요.');
					return false; // 전송취소	
				}
				
				return true;  // 전송시작
			});
		});