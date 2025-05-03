<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="nav.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="images/resize-1725544615974323237resize172554450480593442sl1200.jpg" alt=""></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" style="font-size: 18px;">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" style="font-size: 18px;">Movies</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" style="font-size: 18px;">Tv Series</a>
              </li>
            </ul>
            <form class="d-flex" style="margin-right: 29%;">
              <input class="form-control me-2" type="search" placeholder="Search for Movies and Tv Series" aria-label="Search" style="width: 500px;">
              <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
            <form class="d-flex" style="margin-right: 1%;">
                <a class="btn btn-outline-light" href="reg.jsp">Register</a>       
              </form>
              <form class="d-flex" style="margin-right: 1%;">
                <a class="btn btn-outline-light" href="signup.jsp">Sign Up</a>      
              </form>
          </div>
        </div>
      </nav>
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" >
            <img src="images/here-after-770x433.jpg" class="d-block w-100" alt="..." style="height:606px;">
          </div>
          <div class="carousel-item">
            <img src="images/CONSUMED-2024-horror-movie-review-1200x900.jpg" class="d-block w-100" alt="..." style="height:606px;">>
          </div>
          <div class="carousel-item">
            <img src="images/a-quiet-place-day-1-1-968x544-1.jpg" class="d-block w-100" alt="..." style="height:606px;">>
          </div>
            <div class="carousel-item">
            <img src="images/ODDITY-2024-horror-movie-review.jpg" class="d-block w-100" alt="..." style="height:606px;">>
          </div>
           <div class="carousel-item">
            <img src="images/sting-2-scaled.jpeg" class="d-block w-100" alt="..." style="height:606px;">>
          </div>
        </div>
      </div>
</body>
</html>