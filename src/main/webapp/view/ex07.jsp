<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	fieldset{width: 300px;}
	form:nth-of-type(1){width: 300px;}
</style>
<script type="text/javascript">
	function send_go(f) {
		let res1 = f.s1.value;
		let res2 = f.s2.value;
		if(res1 === ''){
			alert('숫자를 입력하세요');
			f.s1.focus();
			return;
		}
		f.action = "/01_servlet/Ex07";
		f.submit();
	}
</script>
</head>
<body>
	<form action="/01_servlet/Ex07" method="get">
		<fieldset>
			<legend>계산기</legend>
			<p>수1 : <input type="number" name="s1" required></p>
			<p>수2 : <input type="number" name="s2" required></p>
			<p>연산자 : 
				<input type="radio" name="op" value="+" checked> + 
				<input type="radio" name="op" value="-"> - 
				<input type="radio" name="op" value="*"> * 
				<input type="radio" name="op" value="/"> / 
			</p>
			<input type="submit" value="결과보기">
		</fieldset>
	</form>
	
	<form method="post">
		<fieldset>
			<legend>계산기</legend>
			<p>수1 : <input type="number" name="s1" required></p>
			<p>수2 : <input type="number" name="s2" required></p>
			<p>연산자 : 
					<input type="radio" name="op" value="+" checked> + 
					<input type="radio" name="op" value="-"> - 
					<input type="radio" name="op" value="*"> * 
					<input type="radio" name="op" value="/"> / 
				</p>
			<input type="button" value="결과보기" onclick="send_go(this.form)">
		</fieldset>
	</form>
</body>
</html>