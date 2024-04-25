<%-- 
    Document   : product_register
    Created on : May 13, 2023, 12:07:05 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  
        <link rel="stylesheet" href="bootstrap.min.css">
        <title>Provider register</title>
              <script src="validation.js"></script>
          <style>
            .container{
                margin-bottom: 20px;
               
            }
            .body{
               background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;

                corsor:url('./image/curesle.png'),auto;
            }
            .form{
                border-radius: 20px;
                padding: 30px;
              background-image: url('image/bge10.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100% ;
                margin-top: 50px;
            }
            .labl{
                color: red;
            }
            
        </style>
    </head>
    <body class="body">
         <div class="container">
        <div class="row">
            <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    
                    <form class="form" action="providerregister" method="post">  
                        <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="provider_login.jsp"><b>X</b></a></p>
            <h5 align="center">Provider Register</h5>
            
            <br>
            <div class="row">
            <div class="col-sm-6">
            <label>First Name  <label class="labl">*</label></label>
        
        <input type="text" name="txt_fname" placeholder="Enter first name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
            </div>
            <div class="col-sm-6">
                <label>Last Name  <label class="labl">*</label></label>
                <input type="text" name="txt_lname" placeholder="Enter last name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
            </div>
            </div>
            <br>
            <label> Address  <label class="labl">*</label></label>
            <br>
            <textarea name="txt_address" placeholder="Enter address"  rows="2" class="form-control" required ></textarea>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <label>Phone Number  <label class="labl">*</label></label>
                    <input type="text" name="txt_number" placeholder="Enter contact no." class="form-control" required minlength="10" maxlength="10">
                </div>
               
            </div>
            <br>
           
            <label>Email  <label class="labl">*</label></label>
            <input type="email" name="txt_email" placeholder="Enter email" class="form-control" onkeypress="Javascript:return isemail(event)" required>
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Password  <label class="labl">*</label></label>
                <input type="password" name="txt_password" class="form-control" required minlength="6" maxlength="8" >
                </div>
                <div class="col-sm-6">
        <label>Confirm password  <label class="labl">*</label></label>
        <input type="password" name="txt_repassword" class="form-control" required minlength="6" maxlength="8" >
                </div>
            </div><br>

        <input type="submit" value="Submit" class="btn btn-info form-control" name="btn">
               
  
    </form>
</div>          
        <div class="col-sm-3">
            </div>  
        
        </div>
            </div>
    </body>
</html>