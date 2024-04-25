 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : sign_up
    Created on : May 12, 2023, 11:30:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
       
        <title>Sign_up</title>
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
            .bge{
                background-color: #ffffcc;
                border-radius: 20px;
            }
            .containe{
                 background-image: url('image/red.jpg');
                 
            }
            
        </style>
        
    </head>
    <%@include file='user_navbar2.jsp' %>
    <body class="body">
        <div class="containe">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                
        
                <form class="form" action="booking" method="post">
                   
                    <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="services.html"><b>X</b></a></p>
            <h1>Booking</h1>
           
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
            <div class="row">
                <div class="col-sm-12">
                    <label>Address  <label class="labl">*</label> </label>
                    <textarea id="w3review" placeholder="Enter address" name="txt_address" class="form-control" rows="2" cols="25" required></textarea>
                </div>
               
            </div>
            <br>
             <div class="row">
                <div class="col-sm-12">
                    <label> Date</label>
                    <input type="date" placeholder="select BOD" name="txt_date" class="form-control">
                </div>
               
            </div>
            <br>
             <div class="row bge">
                <div class="col-sm-6"><br>
                    <label>Provider Name<label class="labl">*</label></label>
                    <input type="text" name="txt_provider" placeholder="" class="form-control" value="<%=request.getParameter("provider_name")%>" readonly="" onkeypress="Javascript:return isString(event)" required>
                <br></div>
                 <div class="col-sm-6"><br>
                    <label>Price<label class="labl">*</label></label>
                    <input type="text" name="txt_price" placeholder="" class="form-control" value="<%=request.getParameter("price")%>" readonly=""  onkeypress="Javascript:return isString(event)" required>
                <br></div>
                 
             
                 
             </div><br>
            <div class="row bge">
                <div class="col-sm-6 "><br>
                    <label>Category  <label class="labl">*</label></label>
                    <input type="text" placeholder="" name="txt_category" class="form-control " value="<%=request.getParameter("category")%>" readonly=""  required minlength="6" maxlength="8">
                <br></div>
                <div class="col-sm-6 "><br>
                    
                    <input type="hidden" placeholder="" name="txt_pemail" class="form-control " value="<%=request.getParameter("email")%>" readonly=""  required minlength="6" maxlength="8">
                <br></div>
                
                
            </div>
            <br>
            
            <br>
             <div class="row">
                <div class="col-sm-12">
                    
                    
                    <input type="submit"  name="btn" class="btn btn-info form-control" value="Book" >
                </div>
               
            </div>
                   </form>
                
            
        </div>
            
            </div>
            <div class="col-sm-3"></div>
        </div>
        
        
    </body>
</html>
