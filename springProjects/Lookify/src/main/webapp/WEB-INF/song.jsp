<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details - Title: <c:out value="${song.title}"/></title>
</head>
<body>
	<!-- Show details of a song here -->
	<a href="/dashboard">Dashboard</a>
	<p>Title: <c:out value="${song.title}"/></p>
	<p>Artist: <c:out value="${song.artist}"/></p>
	<p>Rating (1-10): <c:out value="${song.rating}"/></p>
	<a href="/delete/${song.id}">Delete</a>
</body>
</html>