<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="signup.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style type="text/css">
.plus-button {
	top: 80%;
	left: 56%;
	transform: translate(-50%, -50%);
	font-size: 1.9rem;
	color: white;
	opacity: 0.8;
	transition: opacity 0.3s;
	pointer-events: none; /* Prevent interaction */
	border-radius: 50px;
}

.form-group:hover .plus-button {
	opacity: 2;
}
</style>
</head>
<body>
	<div class="container" align="center" style="height: 1000px;">
		<div id="loginForm">
			<div class="panel panel-default">

				<h3 class="panel-title" style="color: white;">Register</h3>
				<br>

				<form accept-charset="UTF-8" role="form" action="Registration"
					method="post"  enctype="multipart/form-data">
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
						<div class="form-group">
							<br> <input class="form-control" placeholder="FullName"
								name="fullname" type="text">
						</div>
						<div class="form-group">
							<br> <input class="form-control" placeholder="Age"
								name="age" type="number">
						</div>
						<br> <select name="gender" class="form-select"
							aria-label="Default select example">
							<option selected>Gender</option>
							<option value="male" data-name="gender">Male</option>
							<option value="female" data-name="gender">Female</option>
							<option value="other" data-name="gender">Others</option>
						</select>
						<div class="form-group">
							<br> <input class="form-control" placeholder="Username"
								name="uname" type="text">
						</div>
						<br>
						<div class="form-group">

							<input class="form-control" placeholder="Password" name="pwd"
								type="password" value="">
						</div>
						<%
						String m = (String) request.getAttribute("msg");
						if (m != null) {
							out.print("<p style='color:red;'>" + m + " </p>");
						}
						%>
						<br>
						<button type="submit" class="btn btn-primary"
							style="background-color: yellow; border-radius: 6px; font-size: 17px; padding: 5px 200px; color: black;">Register</button>
					</fieldset>
					<p
						style="text-align: center; color: white; padding: 10px; padding-left: 35px; padding-right: 35px;">By
						continuing or registering, you agree that you have read and
						understood Spectre's Privacy Policy and agree to Spectre's Terms
						of Use.</p>
				</form>
			</div>

		</div>

	</div>
</body>
</html>