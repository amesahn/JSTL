<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h2>Vegetable Information:</h2>
	<c:set var="vegetable">
		<vegetables> <vegetable> <name>onion</name> <price>40/kg</price>
		</vegetable> <vegetable> <name>Potato</name> <price>30/kg</price> </vegetable> <vegetable>
		<name>Tomato</name> <price>90/kg</price> </vegetable> </vegetables>
	</c:set>
	<x:parse xml="${vegetable}" var="output" />
	<b>Name of the vegetable is</b>:
	<x:out select="$output/vegetables/vegetable[2]/name" />
	<br>
	<b>Price of the Potato is</b>:
	<x:out select="$output/vegetables/vegetable[2]/price" />
	<hr>


	<h2>Books Info:</h2>
	<c:import var="bookInfo" url="novels.xml" />

	<x:parse xml="${bookInfo}" var="output" />
	<p>
		First Book title:
		<x:out select="$output/books/book[1]/name" />
	</p>
	<p>
		First Book price:
		<x:out select="$output/books/book[1]/price" />
	</p>
	<p>
		Second Book title:
		<x:out select="$output/books/book[2]/name" />
	</p>
	<p>
		Second Book price:
		<x:out select="$output/books/book[2]/price" />
	</p>
	<hr>


	<c:import var="xml" url="transfer.xml" />
	<c:import var="xsl" url="transfer.xsl" />
	<x:transform xml="${xml}" xslt="${xsl}" />

</body>
</html>