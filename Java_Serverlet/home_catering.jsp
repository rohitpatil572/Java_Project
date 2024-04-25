<%-- 
    Document   : home_catring
    Created on : May 21, 2023, 12:57:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home_catering</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <style>
        .body{
                background: linear-gradient(to top left, #33ccff 0%, #ff99cc 100%);
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                corsor:url('./image/curesle.png'),auto;
        }
        .cent{
            padding-left: 0px;

        }
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial;
        }

        .header {
            text-align: center;
            padding: 32px;
        }

        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            padding: 0 4px;
        }

        /* Create four equal columns that sits next to each other */
        .column {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
            max-width: 25%;
            padding: 0 4px;
        }

        .column img {
            margin-top: 8px;
            vertical-align: middle;
            width: 100%;
        }

        /* Responsive layout - makes a two column-layout instead of four columns */
        @media screen and (max-width: 800px) {
            .column {
                -ms-flex: 50%;
                flex: 50%;
                max-width: 50%;
            }
        }

        /* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
            .column {
                -ms-flex: 100%;
                flex: 100%;
                max-width: 100%;
            }
        }
    </style>
    <body class="body">
        <jsp:include page="navbar.jsp"></jsp:include>
        <img src="./image/catering_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <!--
        <img src="./image/photographer_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/sound_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/decoraters_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/singers_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/sound_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/mackup_bnr.jpg" alt="logo" style="height:100%; width:100% ; "> -->
        <div class="container"> 

            <div class="header">
                <h1><b>Your imagination our catering</b></h1>
                <p>Your flavour our responsibility.</p>
            </div>

            <!-- Photo Grid -->
            <div class="row"> 
                <div class="column">
                    <img src="./image/catering/catring1.jpg" style="width:100%">
                    <img src="./image/catering/catring2.jpg" style="width:100%">
                    <img src="./image/catering/catring3.jpg" style="width:100%">
                    <img src="./image/catering/catring4.jpg" style="width:100%">
                    <img src="./image/catering/catring5.jpg" style="width:100%">
                    <img src="./image/catering/catring6.png" style="width:100%">
                    
                </div>
                <div class="column">
                    <img src="./image/catering/catring7.jpg" style="width:100%">
                    <img src="./image/catering/catring8.png" style="width:100%">
                    <img src="./image/catering/catring9.jpg" style="width:100%">
                    <img src="./image/catering/catring10.jpg" style="width:100%">
                    <img src="./image/catering/catring11.jpg" style="width:100%">
                    <img src="./image/catering/catring24.png" style="width:100%">
                </div>
                <div class="column">
                     <img src="./image/catering/catring13.jpg" style="width:100%">
                    <img src="./image/catering/catring14.jpg" style="width:100%">
                    <img src="./image/catering/catring15.jpg" style="width:100%">
                    <img src="./image/catering/catring16.jpg" style="width:100%">
                    <img src="./image/catering/catring17.jpg" style="width:100%">
                    <img src="./image/catering/catring18.jpg" style="width:100%">
                    
                </div>
                <div class="column">
                     <img src="./image/catering/catring19.jpg" style="width:100%">
                    <img src="./image/catering/catring20.jpg" style="width:100%">
                    <img src="./image/catering/catring21.jpg" style="width:100%">
                    <img src="./image/catering/catring22.jpg" style="width:100%">
                    <img src="./image/catering/catring23.jpg" style="width:100%">
                    <img src="./image/catering/catring12.jpg" style="width:100%">
                </div>


            </div>
    </body>
</html>

