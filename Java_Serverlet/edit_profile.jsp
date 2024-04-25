<%-- 
    Document   : product_register
    Created on : May 13, 2023, 12:07:05 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
   <%@include file='provider_navbar2.jsp' %>
    <body class="body">
         <div class="container">
        <div class="row">
            <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    
                    <%

                        Connection cn = null;
                        Statement st = null;
                        int counter = 1;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "root");
                            st = cn.createStatement();
                            String sql = "select * from provider_register where email='"+session.getAttribute("email")+"'";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <form class="form" action="providerregister" method="post">  
                        <p  style="float: right " value=""><a style="text-decoration:none; color: red;  font-size: 20px;" href="provider_home.html"><b>X</b></a></p>
            <h5 align="center">Edit profile</h5>
            
            <br>
            <div class="row">
            <div class="col-sm-6">
                <input type="hidden" name="no" value="<%=rs.getString("no")%>">
            <label>First Name  <label class="labl">*</label></label>
        
            <input type="text" name="txt_fname" placeholder="Enter first name" value="<%=rs.getString("fname")%>" class="form-control"  onkeypress="Javascript:return isString(event)" required>
            </div>
            <div class="col-sm-6">
                <label>Last Name  <label class="labl">*</label></label>
                <input type="text" name="txt_lname" placeholder="Enter last name" class="form-control" value="<%=rs.getString("lname")%>" onkeypress="Javascript:return isString(event)" required>
            </div>
            </div>
            <br>
            <label> Address  <label class="labl">*</label></label>
            <br>
            <input name="txt_address" placeholder="Enter address" value="<%=rs.getString("address")%>"  class="form-control" required >
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <label>Phone Number  <label class="labl">*</label></label>
                    <input type="text" name="txt_number" placeholder="Enter contact no." class="form-control" value="<%=rs.getString("number")%>" required minlength="10" maxlength="10">
                </div>
               
            </div>
            <br>
           
           
            
<div class="row">
    
                <div class="col-sm-6">
        <input type="submit" name="btn" value="Update" class="btn btn-danger" >
                </div>
    <div class="col-sm-6">
        <a href="provider_profile.jsp">&larr; back</a>
                </div></div>     
  
    </form>
                     <%
                        }
                    } catch (Exception ex) {
                        out.println(ex.toString());
                    }
                        %>
</div>          
        <div class="col-sm-3">
            </div>  
        
        </div>
            </div>
 <%@include file='provider_footer.jsp' %>
    </body>
</html>