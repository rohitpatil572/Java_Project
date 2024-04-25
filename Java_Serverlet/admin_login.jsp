<%-- 
    Document   : admin_login
    Created on : May 13, 2023, 1:12:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Admin login</title>
         <link rel="stylesheet" href="bootstrap.min.css">
               <script src="validation.js"></script>
         <style>
                .container{
                background-color: white;
                padding: 20px;
                margin-top: 25px;
                border-radius: 20px;
                
            }
            .body{
           
               background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
            }
            .container{
                  background-image: url('image/bge10.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100% ;
                padding: 80px;
                padding-top: 60px;
            }
            .box1{
                background-image: url('image/login1.png');
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
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
        <form action="admin_login" method="post">
        <div class="row">
            <div class="col-sm-2">
                 </div>
                <div class="col-sm-8 container">
                    <div class="row">
                        <div class="col-sm-6 box1"></div>
                        <div class="col-sm-6">
                            <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="home_page.jsp"><b>X</b></a></p><br>
                    <h3 align="center">Admin Login</h3>
                    
              
       
    <label>Username  <label class="labl">*</label></label>
    
    <input type="email" name="txt_use" placeholder="Enter email" class="form-control" required >
            <br>
             <label>Password  <label class="labl">*</label></label>
             <input type="password" name="txt_pswd" placeholder="Enter password" class="form-control"  required minlength="6" maxlength="8">
             <br>
             <input type="submit" name="btn" value="submit" class="btn btn-primary form-control">
                            <br> <br>
                            <a href="sign_up.jsp" style= "float:right">Create new</a>
                        </div>
                    </div>
                  </div>
                 
           
            <div class="col-sm-2">
                
            </div>
               

              </div>
            </form>
    </body>
</html>

