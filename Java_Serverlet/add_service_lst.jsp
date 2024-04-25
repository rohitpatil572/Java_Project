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
        <title>add service list</title>
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
        
        .tbod{
            background-color: white;
        }
    </style>
    <%@include file='admin_navbar2.jsp' %><br>
    <body class="body">
        <div class="container  ">
            <h2 align="center">Services List</h2><br>
           
            <table class="table  table-hover table-bordered ">
                <thead>
                    <tr class="thead-dark">

                        <th scope="col">ID</th>
                        <th scope="col">Provider Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">Category</th>
                        <th scope="col">Details</th>
                        <th scope="col">Price</th>
                        <th scope="col">Area</th>
                        <th scope="col">Update</th>
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
                            String sql = "select * from add_servises";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form  action="add_servises" method="post">
                    <th scope="row"><%=counter++%></th>
                    <input type="hidden" name="no" value="<%=rs.getString("no")%>">
                    <td><input type="text" name="txt_provider_name" class="form-control" value="<%=rs.getString("provider_name")%>"> </td>
                    <td> <input type="text" name="txt_contact" class="form-control" value=" <%=rs.getString("contact")%>"></td>
                    <td> <input type="text" name="txt_email" class="form-control" value=" <%=rs.getString("email")%>"></td>
                    <td><input type="text" name="txt_address" class="form-control" value="<%=rs.getString("address")%>"></td>
                    <td><input type="text" name="txt_category" class="form-control" value="<%=rs.getString("category")%>"></td>
                    <td><input type="text" name="txt_details" class="form-control" value="<%=rs.getString("details")%>"></td>
                    <td><input type="text" name="txt_price" class="form-control" value="<%=rs.getString("price")%>"></td>
                    <td><input type="text" name="txt_area" class="form-control" value="<%=rs.getString("area")%>"></td>
                    <td><input type="submit" name="btn" value="Update" class="btn btn-success btn-sm"></td>
                    <td><input type="submit" name="btn" value="Delete" class="btn btn-danger btn-sm"></td>
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
       
    </body>
</html>
