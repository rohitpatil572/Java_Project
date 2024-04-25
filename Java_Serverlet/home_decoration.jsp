<%-- 
    Document   : home_decoration
    Created on : May 21, 2023, 4:45:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home_decoration</title>
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
        <img src="./image/decoraters_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <!--
        <img src="./image/photographer_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/sound_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/catering_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/singers_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/sound_bnr.jpg" alt="logo" style="height:100%; width:100% ; ">
        <img src="./image/mackup_bnr.jpg" alt="logo" style="height:100%; width:100% ; "> -->
        <div class="container"> 

            <div class="header">
                <h1><b>Your choice our art</b></h1>
                <p>Your happiness our responsibility.</p>
            </div>

            <!-- Photo Grid -->
            <div class="row"> 
                <div class="column">
                    <img src="./image/decoration/decor1.jpg" style="width:100%">
                    <img src="./image/decoration/decor2.jpg" style="width:100%">
                    <img src="./image/decoration/decor3.png" style="width:100%">
                    <img src="./image/decoration/decor4.jpg" style="width:100%">
                    <img src="./image/decoration/decor5.jpg" style="width:100%">
                    <img src="./image/decoration/decor6.jpg" style="width:100%">
                    <img src="./image/decoration/decor7.jpg" style="width:100%">
                    <img src="./image/decoration/decor8.jpg" style="width:100%">
                </div>
                <div class="column">
                    <img src="./image/decoration/decor17.jpg" style="width:100%">
                    <img src="./image/decoration/decor11.jpg" style="width:100%">
                    <img src="./image/decoration/decor12.jpg" style="width:100%">
                    <img src="./image/decoration/decor13.jpg" style="width:100%">
                    <img src="./image/decoration/decor14.jpg" style="width:100%">
                    <img src="./image/decoration/decor15.jpg" style="width:100%">
                    <img src="./image/decoration/decor16.jpg" style="width:100%">
                    <img src="./image/decoration/decor10.jpg" style="width:100%">
                    <img src="./image/decoration/decor20.jpg" style="width:100%">
                    <img src="./image/decoration/decor9.jpg" style="width:100%"> 
                </div>
                <div class="column">
                     <img src="./image/decoration/decor21.png" style="width:100%">
                     <img src="./image/decoration/decor18.jpg" style="width:100%">
                    <img src="./image/decoration/decor22.jpg" style="width:100%">
                    <img src="./image/decoration/decor23.jpg" style="width:100%">
                    <img src="./image/decoration/decor24.jpg" style="width:100%">
                    <img src="./image/decoration/decor25.jpg" style="width:100%">
                    <img src="./image/decoration/decor26.jpg" style="width:100%">
                    <img src="./image/decoration/decor27.jpg" style="width:100%">
                    <img src="./image/decoration/decor28.jpg" style="width:100%">
                    <img src="./image/decoration/decor29.jpg" style="width:100%">
                </div>
                <div class="column">
                     <img src="./image/decoration/decor30.jpg" style="width:100%">
                     <img src="./image/decoration/decor19.jpg" style="width:100%">
                    <img src="./image/decoration/decor31.jpg" style="width:100%">
                    <img src="./image/decoration/decor32.jpg" style="width:100%">
                    <img src="./image/decoration/decor33.jpg" style="width:100%">
                    <img src="./image/decoration/decor34.jpg" style="width:100%">
                    <img src="./image/decoration/decor35.jpg" style="width:100%">
                    <img src="./image/decoration/decor36.jpg" style="width:100%">
                    <img src="./image/decoration/decor37.jpg" style="width:100%">
                    <img src="./image/decoration/decor38.jpg" style="width:100%">
                </div>


            </div>
    </body>
</html>

