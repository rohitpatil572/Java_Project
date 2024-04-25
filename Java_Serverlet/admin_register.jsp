 <%-- 
    Document   : sign_up
    Created on : May 12, 2023, 11:30:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
       
        <title>New Admin Id create</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="validation.js"></script>
        <style>
            body{
                 background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
            }
            .form
            {
               background-image: url('image/bge10.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100% ;
                margin-top: 50px;
                margin-bottom: 50px;
                padding: 30px;
                border-radius: 20px;
            }
            input[type=submit]
            {
                 background-color: #0099ff;
                 color: white;
            }
            .labl{
                color: red;
            }
            
        </style>
        
    </head>
    
    <body class="body">
        <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                
        
                <form class="form" action="admin_register" method="post">
                    <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="admin_home.html"><b>X</b></a></p>
            <h1>Admin new ID </h1>
           
            <br>
            
            <div class="row">
                <div class="col-sm-6">
                    <label>First Name  <label class="labl">*</label></label>
                    <input type="text" name="txt_fname" placeholder="Enter first name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
                </div>
                <div class="col-sm-6">
                    <label>Last Name  <label class="labl">*</label></label>
                    <input type="text" name="txt_lname" class="form-control" placeholder="Enter last name" onkeypress="Javascript:return isString(event)" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <label>Email  <label class="labl">*</label></label>
                    <input type="email" name="txt_email" placeholder="Enter email" class="form-control">
                </div>
               
            </div>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <label>Phone Number  <label class="labl">*</label></label>
                    <input type="text" name="txt_number" placeholder="Enter mob. number" class="form-control" required maxlength="10" minlength="10">
                </div>
               
            </div>
            <br>
            
               
           
            <br>
            <div class="row">
                <div class="col-sm-6">
                    <label>Password  <label class="labl">*</label></label>
                    <input type="password" placeholder="Enter password" name="txt_password" class="form-control " required minlength="6" maxlength="8">
                </div>
                <div class="col-sm-6">
                    <label>Confirm Password  <label class="labl">*</label></label>
                    <input type="password" name="txt_repassword" placeholder="Re-enter password" class="form-control" required minlength="6" maxlength="8">
                </div>
            </div>
            <br>
             <div class="row">
                <div class="col-sm-12">
                    
                    
                    <input type="submit"  name="btn" class="btn btn-info form-control" value="Submit" >
                </div>
               
            </div>
                </form>
            
        </div>
            
            </div>
            <div class="col-sm-3"></div>
        </div>
        
        
    </body>
</html>
