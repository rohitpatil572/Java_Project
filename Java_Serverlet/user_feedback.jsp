<%-- 
    Document   : user_login
    Created on : May 12, 2023, 11:57:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Feedback</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="validation.js">
        <style>
            
            .body{
           
                background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                height: 500px;
                corsor:url('./image/curesle.png'),auto;
            }
            .box1{
                background-image: url('image/feed1.png');
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
            }
            .labl{
                color: red;
            }
            .cone{
                 background-image: url('image/bge12.jpg');
                 padding: 50px;
                 border-radius: 50px;
            }
            
        </style>
        
    </head>
    
    <body class="body">
        
        <br><br>
        <form action="user_feedback" method="post"  >
        <div class="row">
            <div class="col-sm-2">
                 </div>
                <div class="col-sm-8 cone">
                    <div class="row cole">
                        <div class="col-sm-6 box1"></div>
                        <div class="col-sm-6">
                            <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="contact.html"><b>X</b></a></p><br>
                    <h3 align="center">User Feedback</h3>
                    
              
       
    <label>Email  <label class="labl">*</label></label>
    
    <input type="email" name="txt_email" placeholder="Enter email" class="form-control" required >
            <br>
             <label>Message  <label class="labl">*</label></label>
             <textarea type="text" name="txt_msg" placeholder="Write your feedback here" class="form-control"  ></textarea>
             <br>
             <input type="Submit" name="btn" value="Submit" class="btn btn-primary form-control">
                            <br> <br>
                            
                        </div>
                    </div>
                  </div>
                 
           
            <div class="col-sm-2">
                
            </div>
               

              </div>
        </form><br><br>
       
        
    </body>
    
</html>

