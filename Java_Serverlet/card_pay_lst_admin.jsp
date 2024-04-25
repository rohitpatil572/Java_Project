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
        <title>Card pay lst</title>
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
    <%@include file='admin_navbar.jsp' %>
    <body class="body">
        <div class="container">
            <h2 align="center">Card Payments</h2><br>
            <table class="table  table-hover table-bordered">
                <thead>
                    <tr class="thead-dark">

                        <th scope="col">ID</th>
                        <th scope="col">holder_name</th>
                        <th scope="col">crd_no</th>
                        <th scope="col">cvv</th>
                        <th scope="col">exp_date</th>
                        <th scope="col">amount</th>
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
                            String sql = "select * from card_pay";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form action="card_pay" method="post">
                    <th scope="row"><%=counter++%></th>
                    <input type="hidden" name="no" value="<%=rs.getString("no")%>">
                    <td> <%=rs.getString("holder_name")%> </td>
                    <td><%=rs.getString("crd_no")%></td>
                    <td><%=rs.getString("cvv")%></td>
                    <td><%=rs.getString("exp_date")%></td>
                    <td><%=rs.getString("amount")%></td>
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
    </body>
</html>
