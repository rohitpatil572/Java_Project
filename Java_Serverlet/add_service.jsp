<%-- 
    Document   : add_service
    Created on : May 13, 2023, 1:20:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Add service</title>
           <link rel="stylesheet" href="bootstrap.min.css">
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
                padding: 20px;
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
    <%@include file='provider_navbar2.jsp' %><br>
    </head>
    <body class="body">
       <div class="container">
        <div class="row">
            <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    
                    <form class="form " action="add_servises" method="post"> 
                        
                         <p  style="float: right " value=""><a style="text-decoration:none; color: red; font-size: 20px;" href="user_login.jsp"><b>X</b></a></p>
            <h5 align="center">Add Services</h5>
            
            <br>
            <div class="row">
                <div class="col-sm-6">
                    <label>Provider Name <label class="labl">*</label></label>
        
        <input type="text" name="txt_provider_name" placeholder="Enter providre name" class="form-control" onkeypress="Javascript:return isString(event)" required>
           
            <br>
            <label> Description  <label class="labl">*</label></label>
            <br>
            <textarea name="txt_details" placeholder="Enter product details"  rows="2" class="form-control" required></textarea>
            <br>
            <label>Contact  <label class="labl">*</label></label>
        
        <input type="text" name="txt_contact" placeholder="Enter contact no" class="form-control" onkeypress="Javascript:return isNumber(event)"maxlength="10" minlength="10" required>
        <br>
         <label>Add price <label class="labl">*</label> </label>
            <input type="text" name="txt_price" placeholder="Enter price" class="form-control" onkeypress="Javascript:return isNumber(event)"maxlength="6"  required>
            
        <br>
        <br>
        <input type="submit" value="Cancle" class="btn btn-danger" style="float:right;">
        </div>
      
        <div class="col-sm-6">
            <label>Email  <label class="labl">*</label></label>
            <input type="email" name="txt_email" placeholder="Enter email" class="form-control" onkeypress="Javascript:return isemail(event)" required>
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Category name</label>
                    <select name="txt_category" class="form-control">
                        <option>Other services</option>
                        <option>Decoration</option>
                        <option>Photographer</option>
                        <option>Catering</option>
                        <option>sound system</option>
                        <option>Singer/Musicians</option>
                        <option>Makeup artist</option>
                        <option>Venue</option>
                        <option>Sky Shot</option>
                        
                    </select>
              <br>
              
                </div>
                <div class="col-sm-6">
        <label>Select Area</label>
        <select class="form-control" name="txt_area">
            <option> select</option>
               <option>Gadhinglaj</option>
                  <option>Nesari</option>
        </select>
       
                </div>
            </div><br>
             <label>Office Address  <label class="labl">*</label></label>
              <textarea type="" name="txt_address" placeholder="Enter office address" class="form-control" required></textarea>
    <br>
      <label>Add profile image   <label class="labl">*</label></label>
       <input type="file" name="txt_image" placeholder="Add" class="form-control" required>
       <br>
       <input type="submit"  name="btn" class="btn btn-info" style="float:left;" value="Add">
        </div>      
    
     
   
    </div> 
                        </form> 
</div>          
        <div class="col-sm-2">
            </div>  
        
        </div>
            </div>
         <%@include file='provider_footer.jsp' %>
    </body>
</html>
