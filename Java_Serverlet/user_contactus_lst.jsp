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
        <title>user Contact Us lst</title>
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
     <%@include file='admin_navbar2.jsp' %>
    <body class="body">
        <div class="container">
            <h2 align="center">User contact_us lst</h2><br>
            <table class="table  table-hover table-bordered">
                <thead>
                    <tr class="thead-dark">

                       <th scope="col">ID</th>
                        <th scope="col">name</th>
                        <th scope="col">email</th>
                        <th scope="col">phone</th>
                        <th scope="col">subject</th>
                        <th scope="col">message</th>
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
                            String sql = "select * from user_contactus";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form action="contact1" method="post">
                    <th scope="row"><%=counter++%></th>
                    <input type="hidden" name="no" value="<%=rs.getString("no")%>">
                    <td><input type="text" name="txt_name" class="form-control" value="<%=rs.getString("name")%>"> 
                    <td><input type="text" name="txt_email" class="form-control" value="<%=rs.getString("email")%>"></td>
                    <td><input type="text" name="txt_phone" class="form-control" value="<%=rs.getString("phone")%>"></td>
                    <td><input type="text" name="txt_subject" class="form-control" value="<%=rs.getString("subject")%>"></td>
                    <td><input type="text" name="txt_msg" class="form-control" value="<%=rs.getString("message")%>"></td>
                    <td><input type="submit" name="btn" value="Update" class="btn btn-success"></td>
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
                 <%@include file='admin_footer.jsp' %>
    </body>
</html>
