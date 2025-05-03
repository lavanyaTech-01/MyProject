<%@page import="com.spectre.dto.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="nav.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<%
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-cache");
response.setHeader("expire", "0");
%>
<body>
	<%
	String us = (String) session.getAttribute("user");
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img
				src="images/resize-1725544615974323237resize172554450480593442sl1200.jpg"
				alt=""></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#" style="font-size: 18px;">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="font-size: 18px;">Movies</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="font-size: 18px;">Tv Series</a></li>
				</ul>
				<form class="d-flex" style="margin-right: 29%;">
					<input class="form-control me-2" type="search"
						placeholder="Search for Movies and Tv Series" aria-label="Search"
						style="width: 500px;">
					<button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
				<div class="dropdown dropstart">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton2" data-bs-toggle="dropdown"
						aria-expanded="false" style="margin-right: 20px;">
						Hi,<%
					if (us != null) {
						out.print(us);
					} else {
						response.sendRedirect("nav.jsp");
					}
					%>
					</button>
					<ul class="dropdown-menu dropdown-menu-dark"
						aria-labelledby="dropdownMenuButton2">
						<li><a class="dropdown-item" href="AdminSuccess.jsp">
								Home</a></li>
						<li><a class="dropdown-item" href="#">Languages</a></li>
						<li><a class="dropdown-item" href="#">Favorites</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#"> </a></li>

						<a class="btn btn-outline-success" href="LogoutCtrl"
							style="margin-left: 20px; margin-bottom: 5px;">Sign Out!</a>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<br>
	<%
	ArrayList<UserDto> li = (ArrayList<UserDto>) request.getAttribute("List");
	//String m = (String) request.getAttribute("msg");
	%>
	<h2 style="text-align: center;">Account Details</h2>
	<br>
	<%
	//if (m != null) {

	//}
	%>
	<div style="margin: 10px; padding: 3px;">
		<table class="table" border="2">
			<thead>
				<tr style="background-color: black; color: white;">
					<th scope="col">ID</th>
					<th scope="col">FULLNAME</th>
					<th scope="col">AGE</th>
					<th scope="col">GENDER</th>
					<th scope="col">USERNAME</th>
					<th scope="col">PASSWORD</th>
					<th scope="col">AVATAR/PHOTO</th>
					<th scope="col">DELETION</th>
					<th scope="col">UPDATION</th>
				</tr>
			</thead>
			<%
			for (UserDto ud : li) {
			%>
			<tbody>
				<tr>
					<th scope="row"><%=ud.getUid()%></th>
					<td><%=ud.getFullName()%></td>
					<td><%=ud.getAge()%></td>
					<td><%=ud.getGender()%></td>
					<td><%=ud.getUsername()%></td>
					<td><%=ud.getPassword()%></td>
					<td> <img alt="not found" height="80" width="100" src="UserPhoto?id=<%=ud.getUid()%>"></td>
					<td><a href="deleteCtrl?id=<%=ud.getUid()%>"
						class="btn btn-danger" onclick="return confirm('Are You Sure To Delete This Record?')">Delete</a></td>
					<td><a href="UpdateCtrl?id=<%=ud.getUid()%>"
						class="btn btn-primary">Edit</a></td>
				</tr>

			</tbody>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>