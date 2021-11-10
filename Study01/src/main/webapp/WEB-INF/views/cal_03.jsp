<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
   <title>calculator</title>
		<style>
			body{
				text-align:center;
				margin:50px 400px;
				padding:20px 80px 50px 80px;
				border:1px solid black;
			}
			
			.space1{
				margin-left:130px;
			}
			
			.space2{
				margin-left:30px;
			}
			
		</style>
		<script>
		
			function totalbtn(){
				//alert("!!");
				
				var num1 = Number(document.getElementById("num1").value);
				var num2 = Number(document.getElementById("num2").value);
				var result;
				
				if(document.getElementsByName("cal")[0].checked===true){
					result=num1+num2;
				}else if(document.getElementsByName("cal")[1].checked===true){
					result=num1-num2;
				}else if(document.getElementsByName("cal")[2].checked===true){
					result=num1*num2;
				}else if(document.getElementsByName("cal")[3].checked===true){
					result=num1/num2;
				}
				document.getElementById("result").value=result;
			}
			
			function resetbtn(){
			
				document.getElementById("num1").value="";
				document.getElementById("num2").value="";
				document.getElementById("result").value="";
				
			}
		
		</script>
	</head>
	<body>

		<h2>계산기</h2>
		<form name="frm">
			입력값 1 : <input type="text" name="num1" id="num1"><p/>
			입력값 2 : <input type="text" name="num2" id="num2"><p/>
			<div class="space1">
			<input type="radio" name="cal" value="plus" checked>덧셈
			<input type="radio" name="cal" value="minus">뺄셈
			<input type="radio" name="cal" value="multipli">곱셈
			<input type="radio" name="cal" value="divi">나눗셈<p/>
			</div>
			<div class="space2">
			<input type="button" id="total" onclick="totalbtn()" value="계산하기">
			<input type="button" id="reset" onclick="resetbtn()" value="초기화"> <p/>
			</div>
			계산결과 : <input type="text" id="result">
		</form>
	</body>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
   
  </script>


</html>