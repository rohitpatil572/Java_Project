<%-- 
    Document   : home_makeup
    Created on : May 22, 2023, 11:29:20 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : home_photographer
    Created on : May 21, 2023, 12:14:09 AM
    Author     : Admin
--%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home_makeup</title>
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
         <jsp:include page="navbar.jsp" ></jsp:include>
        <img src="./image/mackup_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <!--<img src="./image/decoraters_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/catering_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/singers_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/sound_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
          <img src="./image/photographer_bnr.jpg" alt="logo" style="height:100%; width:100% ; "> -->
        <div class="container"> 

            <div class="header">
                <h1><b>We want to make you glow like a star </b></h1>
                <p>Don't be shy, you're beautiful.</p>
            </div>

            <!-- Photo Grid -->
            <div class="row"> 
                <div class="column">
                    <img src="./image/makeup/makeup1.jpg" style="width:100%">
                    <img src="./image/makeup/makeup2.jpg" style="width:100%">
                    <img src="./image/makeup/makeup3.jpg" style="width:100%">
                    <img src="./image/makeup/makeup4.jpg" style="width:100%">
                    <img src="./image/makeup/makeup5.jpg" style="width:100%">
                    <img src="./image/makeup/makeup6.jpg" style="width:100%">
                    <img src="./image/makeup/makeup7.jpg" style="width:100%">
                    <img src="./image/makeup/makeup14.jpg" style="width:100%">
                </div>
                <div class="column">
                    <img src="./image/makeup/makeup8.jpg" style="width:100%">
                    <img src="./image/makeup/makeup9.jpg" style="width:100%">
                    <img src="./image/makeup/makeup10.jpg" style="width:100%">
                    <img src="./image/makeup/makeup27.jpg" style="width:100%">
                    <img src="./image/makeup/makeup11.jpg" style="width:100%">
                    <img src="./image/makeup/makeup12.jpg" style="width:100%">
                    <img src="./image/makeup/makeup21.jpg" style="width:100%">
                   
                </div>
                <div class="column">
                    <img src="./image/makeup/makeup15.jpg" style="width:100%">
                    <img src="./image/makeup/makeup16.jpg" style="width:100%">
                    <img src="./image/makeup/makeup17.jpg" style="width:100%">
                    <img src="./image/makeup/makeup18.jpg" style="width:100%">
                    <img src="./image/makeup/makeup19.jpg" style="width:100%">
                    <img src="./image/makeup/makeup20.jpg" style="width:100%">
                    <img src="./image/makeup/makeup13.jpg" style="width:100%">
                    <img src="./image/makeup/makeup3.jpg" style="width:100%">
                </div>
                <div class="column">
                    <img src="./image/makeup/makeup22.jpg" style="width:100%">
                    <img src="./image/makeup/makeup23.jpg" style="width:100%">
                    <img src="./image/makeup/makeup24.jpg" style="width:100%">
                    <img src="./image/makeup/makeup25.jpg" style="width:100%">
                    <img src="./image/makeup/makeup26.jpg" style="width:100%">
                </div>


            </div>
    </body>
</html>

