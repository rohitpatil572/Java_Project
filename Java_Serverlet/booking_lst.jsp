<%-- 
    Document   : user_register_lst
    Created on : May 20, 2023, 8:54:26 PM
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
        <title>Bookings</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <style>
        .body{
            background-image: url('image/red.jpg');
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
        }
        .container{
            margin-top: 25px;
            
        }
        .tbod{
            background-color: white;
        }
    </style>
    <%@include file='provider_navbar2.jsp' %><br><br>
    <body class="body">
        <div class="container">
            <h2 align="center">booking</h2><br>
            <table class="table  table-hover table-bordered">
                <thead>
                    <tr class="thead-dark">

                       <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Number</th>
                        <th scope="col">Date</th>
                        <th scope="col">Address</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Delete</th>

                    </tr>
                </thead>
                <tbody class="tbod">
                    <%

                        Connection cn = null;
                        Statement st = null;
                        int counter = 1;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "root");
                            st = cn.createStatement();
                            String sql = "select * from  booking where pemail='"+session.getAttribute("email")+"'";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form action="booking" method="post">
                    <th scope="row"><%=counter++%></th>
                    <input type="hidden" name="no" value="<%=rs.getString("no")%>">
                    <td><input type="text" name="txt_fname" class="form-control" value="<%=rs.getString("fname")%> <%=rs.getString("lname")%>"> </td>
                    <td><input type="text" name="txt_email" class="form-control" value="<%=rs.getString("email")%>"></td>
                    <td><input type="text" name="txt_number" class="form-control" value="<%=rs.getString("number")%>"></td>
                    <td><input type="text" name="txt_date" class="form-control" value="<%=rs.getString("date")%>"></td>
                    <td><input type="text" name="txt_address" class="form-control" value="<%=rs.getString("address")%>"></td>
                    <td><input type="text" name="txt_category" class="form-control" value="<%=rs.getString("category")%>"></td>
                    <td><input type="text" name="txt_address" class="form-control" value="<%=rs.getString("price")%>"></td>
                    <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>
                </form>
                </tr>
                <%
                        }
                    } catch (Exception ex) {
                        out.println(ex.toString());
                    }
                %>

                </tbody>
            </table>
        </div>
                 <%@include file='provider_footer.jsp' %>
    </body>
</html>
