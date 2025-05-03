<%@page import="java.util.ArrayList"%>
<%@page import="com.spectre.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="signup.css">
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
	String st = (String) session.getAttribute("user");
	%>
	<%
	UserDto us = (UserDto) request.getAttribute("Update");
	
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark col-sm-12" style=" top: 0;">
		<div class="container-fluid col-sm-12" >
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
					if (st != null) {
						out.print(st);
					}else{
						response.sendRedirect("nav.jsp");
					}
					%>
					</button>
					<ul class="dropdown-menu dropdown-menu-dark"
						aria-labelledby="dropdownMenuButton2">
						<li><a class="dropdown-item" href="UserDetails">Account
								Settings</a></li>
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
	<div class="container " align="center">

		<div id="box"></div>

		<div id="loginForm">
			<div class="panel panel-default">

				<h3 class="panel-title" style="color: white;">Updation Page</h3>

				<br>
				<form accept-charset="UTF-8" role="form" action="UpdateCtrl"
					method="post">
					<div class="form-group">
						<div class="dropdown">
							<button class="btn btn-secondary" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false" name="avatar">
								<img
									src="images/Avatars/user-member-avatar-face-profile-icon-vector-22965342.jpg"
									alt="User Avatar" id="selectedAvatar"
									style="border-radius: 50%; height: 100px;"> <i
									class="fa-solid fa-circle-plus plus-button fa-xl"
									style="color: #09a5ed; position: absolute;"></i>
							</button>

							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">

								<img src="images/Avatars/av1.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 1"
									onclick="selectAvatar('images/Avatars/av1.png')">
								<img src="images/Avatars/av2.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 2"
									onclick="selectAvatar('images/Avatars/av2.png')">
								<img src="images/Avatars/av3.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 3"
									onclick="selectAvatar('images/Avatars/av3.png')">
								<img src="images/Avatars/av4.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 4"
									onclick="selectAvatar('images/Avatars/av4.png')">
								<img src="images/Avatars/av5.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 5"
									onclick="selectAvatar('images/Avatars/av5.png')">
								<br>
								<img src="images/Avatars/av6.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 6"
									onclick="selectAvatar('images/Avatars/av6.png')">
								<img src="images/Avatars/av7.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av7.png')">
								<img src="images/Avatars/av8.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av8.png')">
								<img src="images/Avatars/av9.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av9.png')">
								<img src="images/Avatars/av10.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av10.png')">
								<br>
								<img src="images/Avatars/av11.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av11.png')">
								<img src="images/Avatars/av12.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av12.png')">
								<img src="images/Avatars/av13.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av13.png')">
								<img src="images/Avatars/av14.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av14.png')">
								<img src="images/Avatars/av15.png"
									style="width: 60px; cursor: pointer;" alt="Avatar 7"
									onclick="selectAvatar('images/Avatars/av15.png')">
								<br>

								<li>
									<div class="input-group mb-3" style="padding: 5px;">
										<label for="inputGroupFile02" style="border: 2px solid black; border-radius: 5px; display: inline-block;padding: 5px;"> <img
											src="images/Avatars/camera-plus.png" alt="Select file"
											style="max-width: 70px; height: 65px; cursor: pointer;">
										</label> <input type="file" class="form-control" id="inputGroupFile02" 
											name="photo" style="display: none;" accept="image/*"  onchange="uploadAvatar(this)">
									</div>
									
								</li>

							</ul>
						</div>
					</div>
					<script>
						function selectAvatar(avatarSrc) {
							// Get the image element inside the button
							var selectedAvatar = document
									.getElementById('selectedAvatar');

							// Update the image source to the selected avatar
							selectedAvatar.src = avatarSrc;
						}
						function uploadAvatar(input) {
						    if (input.files && input.files[0]) {
						        var reader = new FileReader();

						        reader.onload = function(e) {
						            var selectedAvatar = document.getElementById('selectedAvatar');
						            selectedAvatar.src = e.target.result;
						            selectedAvatar.style.maxWidth = "100px"; // Apply same size as avatars
						            selectedAvatar.style.height = "100px";   // Keep consistent height
						            selectedAvatar.style.objectFit = "cover"; // Ensure proper scaling of image// Display uploaded image
						        }

						        // Check if the file is an image before reading it
						        if (input.files[0].type.startsWith("image/")) {
						            reader.readAsDataURL(input.files[0]);
						        } else {
						            alert("Please upload a valid image file.");
						        }
						    }
						}					
						</script>
					
					<fieldset>
					<span style="margin-right: 93%;color:white;font-size: 18px">Id :</span>
						<div class="form-group">
						
							 <input class="form-control" placeholder="Id"
								name="id" value="<%=us.getUid()%>" type="text" readonly="readonly">
						</div>
						
						<span style="margin-right: 80%;color:white;font-size: 18px">Fullname :</span>
						<div class="form-group">
						
							 <input class="form-control" placeholder="FullName"
								name="fullname" value="<%=us.getFullName()%>" type="text">
						</div>
						
						<span style="margin-right: 88%;color:white;font-size: 18px">Age :</span>
						<div class="form-group">
						
							<input class="form-control" placeholder="Age"
								name="age" value="<%=us.getAge()%>" type="number">
						</div>
						
						<span style="margin-right: 83%;color:white;font-size: 18px">Gender :</span>
						<div class="form=group">
						 <select name="gender" value="<%=us.getGender()%> "
							class="form-select" aria-label="Default select example" >
							
							<option value="male" data-name="gender">Male</option>
							<option value="female" data-name="gender">Female</option>
							<option value="other" data-name="gender">Others</option>
						</select>
						</div>
						
						<span style="margin-right: 80%;color:white;font-size: 18px">Username :</span>
						<div class="form-group">
							 <input class="form-control" placeholder="Username"
								name="username" value="<%=us.getUsername()%>" type="text">
						</div>
						
						<span style="margin-right: 81%;color:white;font-size: 18px">Password :</span>
						<div class="form-group">

							<input class="form-control" placeholder="Password" name="password"
								value="<%=us.getPassword()%>" type="text">
						</div>


						<button type="submit" class="btn btn-"
							style="background-color: #08b7f7; border: 2px black solid; border-radius: 6px; font-size: 17px; padding: 5px 30px; color: black; margin: 25px;">Edit</button>
					</fieldset>

				</form>
			</div>

		</div>

	</div>
</body>
</html>