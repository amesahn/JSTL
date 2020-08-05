<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="Amount" value="786.970" />

	<fmt:parseNumber var="j" type="number" value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>

	<fmt:parseNumber var="j" integerOnly="true" type="number"
		value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>
	<hr>

	<c:set var="str" value="<%=new java.util.Date()%>" />
	<fmt:formatDate value="${str}" type="both" timeStyle="long"
		dateStyle="long" />

	<hr>

	<h3>Formatting of Number:</h3>
	<c:set var="Amount" value="9850.14115" />
	<p>
		Formatted Number-1:
		<fmt:formatNumber value="${Amount}" type="currency" />
	</p>
	<p>
		Formatted Number-2:
		<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" />
	</p>
	<p>
		Formatted Number-3:
		<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" />
	</p>
	<p>
		Formatted Number-4:
		<fmt:formatNumber type="number" maxFractionDigits="6"
			value="${Amount}" />
	</p>
	<p>
		Formatted Number-5:
		<fmt:formatNumber type="percent" maxIntegerDigits="4"
			value="${Amount}" />
	</p>
	<p>
		Formatted Number-6:
		<fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" />
	</p>
	<hr>

	<fmt:bundle basename="com.javatpoint.Simple" prefix="colour.">
		<fmt:message key="Violet" />
		<br />
		<fmt:message key="Indigo" />
		<br />
		<fmt:message key="Blue" />
		<br />
	</fmt:bundle><hr>
	
	
</body>
</html>