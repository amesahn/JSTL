<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:out value="${'안녕하세요!!'}" />
	<br>
	<hr>

	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}" />
	<br>
	<hr>

	<c:set var="income" scope="session" value="${4000*4}" />
	<p>
		Before Remove Value is:
		<c:out value="${income}" />
	</p>
	<c:remove var="income" />
	<p>
		After Remove Value is:
		<c:out value="${income}" />
	</p>
	<br>
	<hr>

	<c:catch var="catchtheException">
		<%
			int x = 2 / 0;
		%>
	</c:catch>

	<c:if test="${catchtheException != null}">
		<p>
			The type of exception is : ${catchtheException} <br /> There is an
			exception: ${catchtheException.message}
		</p>
	</c:if>
	<br>
	<hr>

	<c:set var="income" scope="session" value="${4000*4}" />
	<c:if test="${income > 8000}">
		<p>
			My income is:
			<c:out value="${income}" />
		</p>
	</c:if>
	<br>
	<hr>

	<c:set value="11" var="num"></c:set>
	<c:choose>
		<c:when test="${num%2==0}">
			<c:out value="${num} is even number"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="${num} is odd number"></c:out>
		</c:otherwise>
	</c:choose>
	<br>
	<hr>

	<c:forEach var="j" begin="1" end="10">  
    Item <c:out value="${j}" />
		<p>
	</c:forEach>
	<br>
	<hr>

	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
		<c:out value="${name}" />
		<p>
	</c:forTokens>
	<br>
	<hr>



</body>
</html>
