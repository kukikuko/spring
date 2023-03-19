<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div>
		<div>
			<form method="post">
				<input placeholder="아이디" type="text" name="id">
				<select name="name" >
				    <option value="none">=== 선택 ===</option>
				    <c:forEach items="${nameList}" var="name">
				    	<option value="${name}">${name}</option>
				    </c:forEach>
				</select>
				<select name="nation" id="nation" onchange="ct(this)">
				    <option value="none">=== 선택 ===</option>
				    <c:forEach items="${nationList}" var="nation">
				    	<option value="${nation}">${nation}</option>
				    </c:forEach>
				</select>
				<select name="city" id="city">
				    <option value="none">=== 선택 ===</option>
				</select>
	  			<input type='radio' name='gender' value='남' />남
				<input type='radio' name='gender' value='여' />여
				<button type="submit">조회</button>
			</form>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th>선택</th>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>국가</th>
						<th>도시</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${boardList}" var="board">
						<tr>
							<td>${board.no}</td>
							<td>${board.id}</td>
							<td>${board.name}</td>
							<td>${board.gender}</td>
							<td>${board.nation}</td>
							<td>${board.city}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>












<script>
	function ct(o) {
		$("#city > option").remove();
		var nation = o.value;
		console.log(nation);
		if(nation != "none") {
			$.ajax({
				  type: "POST",
				  url: "/combo",
				  data: {nation : nation},
				  success: function(data) {
				  	console.log(data);
				  	console.log(data[0]);
				  	var laborOption = "<option value='none'>=== 선택 ===</option>";
				  	$("#city").append(laborOption);
				  	for(let i = 0; i<data.length; i++) {
				  		console.log(data[i]);
				  		laborOption = "<option value='" + data[i] + "'>" + data[i] + "</option>";
				  		$("#city").append(laborOption);
				  	}
				  }
			})
		}
	}
</script>
</html>