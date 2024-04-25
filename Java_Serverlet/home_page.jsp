<%-- 
    Document   : home_page
    Created on : May 19, 2023, 6:54:42 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap.min.css">
        <title>Home page</title>
    </head>
    <style>
        .body{
            cursor: url('./image/curesle.png'),auto;
        }
        .logos{

            margin-top: 75px;

        }
        .lbl{
            background: rgb(255,191,88);
background: radial-gradient(circle, rgba(255,191,88,1) 0%, rgba(240,157,75,0) 75%);
        }
        .our_s{
            background-color: orange;
            border-radius: 15px 50px;
        }
        .box2{
            background-image:url('image/ai_bg3.png');
             background-repeat: no-repeat;
                background-size: cover;
                padding-top: 50px;
        }
        .box3{
            
        }

    </style>
    <body class="body">
        <jsp:include page="navbar.jsp"></jsp:include>
        <div class="row">
            <div id="carouselExampleIndicators" class="carousel slide carousel-item-left" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2" class="active"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="./image/event_bg5.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="./image/event_bg6.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="./image/event_bg7.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>



       <!-- royal occasions -->
        <div class="row" >

            <div class="col-sm-4 " align="center">
                <img src="./image/logo_wing.jpg" alt="logo" style="height:200px; width:200px ; ">
                <h4>We are Royal Occasions</h4>
                <h1>No.1</h1>
                <h2>Event Management</h2>
                <p>Here are some ideas from each category above to get you rolling. 
                    Grab the ones you like and use them as a springboard for further brainstorming. 
                    When you have a collection of favorites, 
                    search the internet to find out whether your ideas are in use already.</p>
            </div>
            <div class="col-sm-8" align="center">
                <div class="row logos">
                    <div class="col-sm-4 box1"><img src="./image/pic1.jpg" alt="logo" style="height:200px; width:200px ; "></div>
                    <div class="col-sm-4 box1"><img src="./image/Pic2.jpg" alt="logo" style="height:200px; width:200px; "></div>
                    <div class="col-sm-4 box1"><img src="./image/Pic3.jpg" alt="logo" style="height:200px; width:200px ; "></div>
                </div>

                <div class="row">
                    <div class="col-sm-4 box1" ><img src="./image/Pic4.jpg" alt="logo" style="height:200px; width:200px ; "></div>
                    <div class="col-sm-4 box1" ><img src="./image/Pic5.jpg" alt="logo" style="height:200px; width:200px ; "></div>
                    <div class="col-sm-4 box1" ><img src="./image/Pic6.jpg" alt="logo" style="height:200px; width:200px ; "></div>
                </div>
            </div>
        </div>
       <br><br>
        <!-- our servises -->
        
        <div class="row" >

            
            <div class="col-sm-8" align="center">
                <div class="row logos">
                    <div class="col-sm-4 box3"><a class="navbar-brand" href="home_photographer.jsp"><img src="./image/servise5.jpg" alt="logo" style="height:200px; width:200px ; "></a><h6 class="lbl">PHOTOGRAPHER</h6></div>
                    <div class="col-sm-4 box3"><a class="navbar-brand" href="home_catering.jsp"><img src="./image/servise6.jpg" alt="logo" style="height:200px; width:200px; "></a><h6 class="lbl">CATERING</h6></div>
                    <div class="col-sm-4 box1"><a class="navbar-brand" href="home_decoration.jsp"><img src="./image/servise3.jpg" alt="logo" style="height:200px; width:200px ; "></a><h6 class="lbl">DECORATORS</h6></div>
                </div><br>

                <div class="row">
                    <div class="col-sm-4 box3" ><a class="navbar-brand" href="home_sound.jsp"><img src="./image/servise4.jpg" alt="logo" style="height:200px; width:200px ; "></a><h6 class="lbl">SOUND SYSTEM</h6></div>
                    <div class="col-sm-4 box3" ><a class="navbar-brand" href="home_photographer.jsp"><img src="./image/servise1.jpg" alt="logo" style="height:200px; width:200px ; "></a><h6 class="lbl">SINGER/MUSICIANS</h6></div>
                    <div class="col-sm-4 box3 " ><a class="navbar-brand" href="home_photographer.jsp"><img src="./image/servise2.jpg"  alt="logo" style="height:200px; width:200px ; "></a><h6 class="lbl">MEAKUP ARTIST</h6></div>
                </div>
                
            </div>
            
            <div class="col-sm-4 box2" align="center" >
                <div class="col-sm-6 our_s"><h2>OUR <br> SERVISES</h2></div>
                <br>
                <h4>We are Royal Occasions</h4>
                <br>
                <h5>If you want to book your event package in your budget then login to the page and book your package</h5>
                <p>We are not just a team but a family who works together to give you an unforgettable once-in-a-lifetime experience!
                    Let us make all the arrangements for your special day!
                    The perfect celebration, it’s all possible with us.
                    Every detail is being planned out for your special occasion!
                    Your events will be carried out with distinction by us.
                    Book your next special celebration with us! 
                    We feel honored to be a part of your special occasion.
                    If you want an occasion to remember, book us!</p>
            </div>
        </div>
        


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>