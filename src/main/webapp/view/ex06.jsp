<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 톰캣에 이렇게 읽어달라는 명령어 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		// form 에 action 이 없으면
		let name = f.userName.value; // required 안먹어서 따로 검사하기
		if(name === ''){
			alert('이름을 입력하세요'); // name 이 빈값이면 경고창
			f.userName.focus(); // 칸에 포커스 주기
			return; // 호출한놈한테 돌아감
		}
		f.action = "/01_servlet/Ex06";
		// form 에 action 이 있으면
		f.submit();
	}
</script>
</head>
<body>
	<h2>HTML을 활용한 서버(서블릿)에게 정보 보내기</h2>
	<form action="/01_servlet/Ex06" method="post">
		<p>이름 : <input type="text" name="userName" placeholder="이름을 입력해 주세요" required></p>
		<p>나이 : <input type="number" name="userAge" required></p>
		<input type="submit" value="서버에게 보내기">
		<input type="reset" value="취소">
	</form>
	
	<h2>JS를 활용한 서버(서블릿)에게 정보 보내기</h2> <!-- 단점은 required 안먹어서 그냥 보내기 누르면 넘어감 그래서 검사해야함 -->
	<form method="post">
		<p>이름 : <input type="text" name="userName" placeholder="이름을 입력해 주세요" required></p>
		<p>나이 : <input type="number" name="userAge" required></p>
<!-- 		<input type="submit" value="서버에게 보내기"> -->
		<input type="button" value="서버에게 보내기" onclick="send_go(this.form)"> <!-- this.form : 현재 폼 정보 -->
		<input type="reset" value="취소">
	</form>
</body>
</html>