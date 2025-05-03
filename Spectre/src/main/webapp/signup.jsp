<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="signup.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
 <div class="container" align="center">
  
      <div id="loginForm">
        <div class="panel panel-default" style="padding-bottom: 55px;'">
          
            <h3 class="panel-title" style="color: white;">Sign Up</h3>
        
         
             <form accept-charset="UTF-8" role="form" action="LoginCheck" method="post">
              <fieldset>
              <div class="form-group">
              <br>
                <input class="form-control" placeholder="Username" name="uname" type="text">
              </div>
              <br>
              <div class="form-group">
               <input class="form-control" placeholder="Password" name="pwd" type="password" value="">
              </div>
              
              <%String m = (String) request.getAttribute("msg"); 
               if(m!=null){
              %>
              <p style="color:red;text-align: left;"><%=m %></p>
              <%} %>
            <br>
              <div class="checkbox">
                <label>
                  <input name="remember" type="checkbox" value="Remember Me" > Remember Me
                </label>
              </div>
              <br>
              <button type="submit" class="btn btn-primary" style="background-color: yellow;border-radius: 6px; font-size:17px; padding :5px 200px;color: black;">Sign Up</button>
            </fieldset>
           
            </form>
        </div>
        
      </div>
  
     </div>
</body>
</html>