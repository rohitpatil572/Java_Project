<%-- 
    Document   : contact_us
    Created on : May 16, 2023, 7:11:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact_us</title>
        
        <link rel="stylesheet" href="bootstrap.min.css">
        
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="validation.js"></script>
        <style>
            .body{
                background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
            }
            .container{
              
                
            }
            .form{
                 
                padding: 10px;
            }
            .box1{
                background-image: url('image/bge12.jpg');
                background-repeat: no-repeat;
                background-size: cover;
                
            }
            .right{
                background-image: url('image/bge12.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100% ;
            }
            .labl{
                color: red;
            }
            
        </style>
        <%@include file='provider_navbar2.jsp' %>
    </head>
    <body class="body">
        
        <br><br><br>
        <div class="container">
       
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <form class="form" action="contact1" method="post">
                    <div class="row">
                        <div class="col-sm-3 box1"  style="/*background-color:#ff99cc;*/ color: black;">
                            <img src="image/contact1.png" alt="Italian Trulli" style=" height:220px; width: 220px;">
                            <h4>Contact Info.</h4>
                            <br>
                            <i class="fas fa-map-marker-alt"> Ajara road Gadhinglaj 416502</i>
                            <br><br>
                            <i class="glyphicon glyphicon-envelope"> <b>royal_occasion@gmail.com</b></i>
                            <br><br>
                            <i class="fas fa-phone">  9075803988 / 7057998599</i>
                           
                        </div>
                        
                        
                        <div class="col-sm-9 right" style="background-color:white;">
                            <br>
                            <p  style="float: right " value=""><a style="text-decoration:none; font-size: 20px;" href="provider_home.html"><b>X</b></a></p>
                 <h3>Send a message</h3>
                 
                 <div class="row">
                <div class="col-sm-6">
                    <label>First Name  <label class="labl">*</label></label>
                    <input type="text" name="txt_fname" placeholder="Enter first name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
                    <br>
                    <label>Email  <label class="labl">*</label></label>
                    <input type="email" name="txt_email" placeholder="Enter email" class="form-control"   required>
                </div>
                <div class="col-sm-6">
                    <label>Last Name  <label class="labl">*</label></label>
                    <input type="text" name="txt_lname" class="form-control" placeholder="Enter last name" onkeypress="Javascript:return isString(event)" required>
                    <br>
                    <label>Mobile No.  <label class="labl">*</label></label>
                    <input type="text" name="txt_number" placeholder="Enter Mobile no." class="form-control"  onkeypress="Javascript:return isNumber(event)"maxlength="10" minlength="10" required >
                </div>
            </div>
                 <br>
                 <label>Write your message here  <label class="labl">*</label></label><br>
                 <textarea type="text" name="txt_msg" class="form-control" required ></textarea>
                 <br>
                 <input type="submit" value="Submit" name="btn" class="btn btn-info form-control">
                 
                 <br><br>
                        </div>
                    </div>
                </form>
            </div>
           
            <div class="col-sm-1"></div>
        </div>
        </div>
         <%@include file='provider_footer.jsp' %>
    </body>
</html>
