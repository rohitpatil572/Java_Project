<%-- 
    Document   : card_pay
    Created on : May 13, 2023, 12:38:49 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Card Payment</title>
        <link rel="stylesheet" href="bootstrap.min.css">
              <script src="validation.js"></script>
         <style>
                .container{
                background-color: white;
                padding: 40px;
                margin-top: 40px;
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
                 background-image: url('image/bge12.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover ;
            }
            .labl{
                color: red;
            }
            .imge{
                position: relative;
               margin-top: 50px;
            }
          
         </style>
        
    </head>
    <body class="body">
        
        <form action="card_pay" method="post" class="form">
            
        <div class="row">
            <div class="col-sm-5 imge">
                <img src="image/pay1.png" alt="pay logo" height="500px" width="450px">
                 </div>
                <div class="col-sm-5 container">
                    <p  style="float: right " value=""><a style="text-decoration:none; font-size: 20px;" href="booking.jsp"><b>X</b></a></p>
                    <h3 align="center">CARD PAYMENT</h3>
                    
              
       
    <label>CARD HOLDER NAME  <label class="labl">*</label></label>
    
            <input type="text" name="txt_name" placeholder="Enter card holder name" class="form-control" onkeypress="Javascript:return isString(event)" required>
            <br>
            <div class="row">
                <div class="col-sm-8">
                   
    <label>CARD NUMBER  <label class="labl">*</label></label>
    
            <input type="text" name="txt_crd_no" placeholder="XXXX-XXXX-XXXX-XXXX" class="form-control"onkeypress="Javascript:return isNumber(event)"maxlength="16" minlength="16" required >
            
                </div><br>
                <div class="col-sm-4">
                    <label>CVV</label>
    
                    <input type="text" name="txt_cvv" placeholder="cvv" class="form-control" onkeypress="Javascript:return isNumber(event)"maxlength="3" minlength="3" required>
                </div>
            </div> <br>
             <label>Exp. Date  <label class="labl">*</label></label>
             <input type="date" name="txt_exp_date" class="form-control"  placeholder="enter Exp. date" required>
            
            <br>
               
            
              <label>AMOUNT  <label class="labl">*</label><label>(Advance payment)</label></label>
    
            <input type="text" name="txt_amount" placeholder="" value="2500" readonly="" class="form-control" required>
            <br>
       
                            <input type="submit" value="Pay" name="btn"  class="btn btn-primary form-control">
                         
                  </div>
                 
           
            
               
            </div>
            <div class="col-sm-2">
                
            </div> 
              </div>
            <BR>
            </form></form>
    </body>
</html>

