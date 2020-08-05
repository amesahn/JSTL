<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="String" value="Welcome to javatpoint" />

	<c:if test="${fn:contains(String, 'javatpoint')}">
		<p>Found javatpoint string
		<p>
	</c:if>

	<c:if test="${fn:contains(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>
	<hr>

	<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>
	<hr>

	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>
	<hr>

	<c:set var="str1"
		value="Welcome to JSP                programming         " />
	<p>String-1 Length is : ${fn:length(str1)}</p>

	<c:set var="str2" value="${fn:trim(str1)}" />
	<p>String-2 Length is : ${fn:length(str2)}</p>
	<p>Final value of string is : ${str2}</p>
	<hr>

	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
	The string starts with "The": ${fn:startsWith(msg, 'The')}
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
	<hr>

	<c:set var="str1" value="Welcome-to-JSP-Programming." />
	<c:set var="str2" value="${fn:split(str1, '-')}" />
	<c:set var="str3" value="${fn:join(str2, ' ')}" />

	<p>String-3 : ${str3}</p>
	<c:set var="str4" value="${fn:split(str3, ' ')}" />
	<c:set var="str5" value="${fn:join(str4, '-')}" />

	<p>String-5 : ${str5}</p>
	<hr>

	<c:set var="string" value="This is the first string." />
	${fn:substring(string, 5, 12)}
	<hr>

	<c:set var="str1" value="This is first string" />
	<c:set var="str2" value="Hello" />
	Length of the String-1 is: ${fn:length(str1)}
	<br> Length of the String-2 is: ${fn:length(str2)}
	<hr>
	
	

</body>
</html>