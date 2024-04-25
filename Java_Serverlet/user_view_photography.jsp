<%-- 
    Document   : decoration_user_view
    Created on : Jun 11, 2023, 2:03:07 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view photography</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <style>
        .body{
          background: rgb(245,189,34);
            background: linear-gradient(0deg, rgba(245,189,34,1) 0%, rgba(247,103,85,1) 53%);
            background-attachment: fixed;
        }
        .card1{
            display: inline-block;
                margin: 10px;
                background-color: whitesmoke;
                padding:10px;
                margin-left: 10px;   
        }
        .heding{
          color: white;
          text-align: center;
          font-weight: bold;
          font-family: Merriweather;
          text-shadow: 3px 3px 2px rgba(128, 0, 0, 1);
          
        }
        .hide{
            desplay:none;
        }
    </style>
    
    <body class="body">
        <%@include file="user_navbar.jsp" %>
        <!-- inner banner -->
        <h1 class="heding">Photography</h1><br>
    <!-- //inner banner -->
       
            <%
                Connection cn=null;
                Statement st=null;
                
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","root");
            st=cn.createStatement();
            String sql="select * from add_servises where category='Photographer'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                %>
        <div class="card1" style="width: 18rem;">
            <form action="booking.jsp" method="post">
                 
  <img src="<%=rs.getString("image")%>" class="card-img-top" alt="..." style="width:17rem; height: 22rem;" >
  <div class="card-body">
    <h5 class="card-title"><%=rs.getString("category")%></h5>
    <p class="card-text">Details: <%=rs.getString("details")%></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Provider: <%=rs.getString("provider_name")%></li>
    <li class="list-group-item">Area : <%=rs.getString("area")%></li>
    <li class="list-group-item">Price: <%=rs.getString("price")%></li>
    <li class="list-group-item " style="display:none;">email: <%=rs.getString("email")%></li>
    
    <input type="hidden" value="<%=rs.getString("provider_name")%>" name="provider_name">
           <input type="hidden" value="<%=rs.getString("price")%>" name="price">
           <input type="hidden" value="<%=rs.getString("category")%>" name="category">
           <input type="hidden" value="<%=rs.getString("email")%>" name="email">
           
    
  </ul>
  <div class="card-body">
      <input type="submit" class="btn btn-dark" value="Book">
  </div></form></form>
</div>
        <%
                 }
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
       
    </body>
</html>
