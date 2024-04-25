<%-- 
    Document   : navbar
    Created on : May 19, 2023, 2:36:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <style>
      .container-fluid{
         /*background: linear-gradient(to bottom right, #ffff66 0%, #00ffff 100%);*/
         background: linear-gradient(to right, #ffffff 0%, #ff9933 100%);
      }
      
      .navbar .navbar-nav .nav-item a{
          padding: 20px;
      }
      
  </style>
  <body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
 <nav class="navbar navbar-expand-lg bg-body-tertiary ">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="./image/logo3.jpg" alt="logo" style="height:50px; width:50px ; "></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mt-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home_page.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="contact_us.jsp">Contact Us</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" active href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Servises
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="home_decoration.jsp">Decoration</a></li>
            <li><a class="dropdown-item" href="home_photographer.jsp">Photographer</a></li>
            <li><a class="dropdown-item" href="home_sound.jsp">Sound System</a></li>
            <li><a class="dropdown-item" href="home_singer.jsp">Singer/Musicians</a></li>
            <li><a class="dropdown-item" href="home_catering.jsp">catering</a></li>
            <li><a class="dropdown-item" href="home_makeup.jsp">Makeup artist</a></li>
          </ul>
        </li>
        
      </ul>
        <ul class="navbar-nav ms-auto ">
            <li class="nav-btn"><a class="btn btn-outline-dark btn-light" href="user_login.jsp">Login</a></li>&nbsp;&nbsp;
            <li class="nav-btn"><a class="btn btn-outline-dark btn-light" href="sign_up.jsp">Sign Up</a></li>
        </ul>
    </div>
  </div>
</nav>

    
  </body>
</html>
