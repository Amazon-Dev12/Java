<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lookify!</title>
</head>
<body>
	<a href="/songs/add_new">Add New</a> | <a href="/search/topTen">Top Songs</a>
	
	<!-- Search by artist name -->
	<form action="/search">
	    <label for="artist">Search Artists</label>
	    <input type="text" name="artist" id="artist"/> 
	    <input type="submit" value="Submit"/>
	</form>

	<table class="table" border="1">
		<thead>
			<tr>
				<th>Title</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${songs}" var="song" >
		    <tr>    
			    <td><a href="/songs/${song.id}"><c:out value="${song.title}"/></a></td>
			    <td><c:out value="${song.rating}"/></td>
			    <td><a href="/delete/${song.id}">Delete</a></td>
		    </tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>