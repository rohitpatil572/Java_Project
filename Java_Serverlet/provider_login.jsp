<%-- 
    Document   : provider_login
    Created on : May 13, 2023, 12:17:54 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>provider login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="validation.js">
        <style>
            .container{
                background-color: white;
                padding: 50px;
                margin-top: 60px;
                border-radius: 20px;
                
                
            }
            .body{
           
                background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
            }
            .box1{
                background-image: url('image/login2.png');
                background-repeat: no-repeat;
                background-size: cover;
               
            }
            .labl{
                color: red;
            }
             .container{
                 background-image: url('image/bge12.jpg');
            }
        </style>
    </head>
    <body class="body">
        <form action="provider_login" method="post">
        <div class="row">
            <div class="col-sm-2">
                 </div>
                <div class="col-sm-8 container">
                    <div class="row">
                        <div class="col-sm-6 box1"></div>
                        <div class="col-sm-6">
                            <p  style="float: right " value=""><a style="text-decoration:none; color: red; font-size: 20px;" href="M_home.html"><b>X</b></a></p>
                    <h3 align="center">Provider Login</h3>
                    
              
       
    <label>Username  <label class="labl">*</label></label>
    
    <input type="email" name="txt_email" placeholder="enter username" class="form-control" required >
            <br>
             <label>Password  <label class="labl">*</label></label>
             <input type="password" name="txt_password" placeholder="enter password" class="form-control"  required minlength="6" maxlength="8">
             <br>
             <input type="submit" value="submit" name="btn" class="btn btn-primary form-control">
                            <br> <br>
                            <a href="provider_register.jsp"style="float:right">Create new</a>
                        </div>
                    </div>
                    </div>
                 
           
            <div class="col-sm-2">
                
            </div>
               

              </div>
            </form>
    </body>
</html>
