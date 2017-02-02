<%-- 
    Document   : login
    Created on : 17 Jan, 2017, 6:57:42 PM
    Author     : Mirza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
﻿<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Hyderabad Manpower</title>
        <!-- Favicon-->
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="${pageContext.request.contextPath}/plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="${pageContext.request.contextPath}/plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Custom Css -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    </head>

    <body style="background-color: #00BCD4" >
        <s:if test="displaymsg==true">
            <div class="col-md-3 alert alert-success fade in w3-animate-right" style="">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Logout Successfully!</strong>
            </div>
        </s:if>
        <s:if test="displaymsg==false">
            <div class="col-md-4 alert alert-warning fade in w3-animate-right" style="">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Login Failed!</strong> Please Try With Correct Details.
            </div>
        </s:if>
        <h3 style="text-align: center;color: #fff"><b>Welcome To Hyderabad Manpower</b></h3>
        <div class="container" style="margin-top: 5%;">
            <div class="col-md-4">
                <div class="login-box">
                    <div class="logo">
                        <!--            <a href="javascript:void(0);">Manager<b>Login</b></a>-->
                        <h4 style="color: #fff">Manager Login</h4>
                    </div>
                    <div class="card">
                        <div class="body">
                            <form id="sign_in" action="${pagContext.request.contextPath}/hydadmin/manager-login" method="POST">
                                <div class="msg">Sign in to start your session</div><br>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">person</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="email" class="form-control" name="emailid" placeholder="Email ID" required autofocus>
                                    </div>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-8 p-t-5">
                                        <!--                            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                                                    <label for="rememberme">Remember Me</label>-->
                                    </div>
                                    <div class="col-xs-4">
                                        <button class="btn btn-block bg-pink waves-effect" type="submit">SIGN IN</button>
                                    </div>
                                </div>
                                <!--                    <div class="row m-t-15 m-b--20">
                                                        <div class="col-xs-6">
                                                            <a href="sign-up.html">Register Now!</a>
                                                        </div>
                                                        <div class="col-xs-6 align-right">
                                                            <a href="forgot-password.html">Forgot Password?</a>
                                                        </div>
                                                    </div>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="col-md-4"> 
                <div class="login-box">
                    <div class="logo">
                        <!--            <a href="javascript:void(0);">Admin<b>Login</b></a>-->
                        <h4 style="color: #fff">Admin Login</h4>
                    </div>
                    <div class="card">
                        <div class="body">
                            <form id="sign_in" action="${pagContext.request.contextPath}/hydadmin/admin-login" method="POST">
                                <div class="msg">Sign in to start your session</div><br>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">person</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="email" class="form-control" name="emailid" placeholder="Email ID" required autofocus>
                                    </div>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-8 p-t-5">
                                        <!--                            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                                                    <label for="rememberme">Remember Me</label>-->
                                    </div>
                                    <div class="col-xs-4">
                                        <button class="btn btn-block bg-pink waves-effect" type="submit">SIGN IN</button>
                                    </div>
                                </div>
                                <!--                    <div class="row m-t-15 m-b--20">
                                                        <div class="col-xs-6">
                                                            <a href="sign-up.html">Register Now!</a>
                                                        </div>
                                                        <div class="col-xs-6 align-right">
                                                            <a href="forgot-password.html">Forgot Password?</a>
                                                        </div>
                                                    </div>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="login-box">
                    <div class="logo">
                        <!--            <a href="javascript:void(0);">Recruiter Login</b></a>-->
                        <h4 style="color: #fff">Recruiter Login</h4>

                    </div>
                    <div class="card">
                        <div class="body">
                            <form id="sign_in" action="${pagContext.request.contextPath}/hydadmin/recruiter-login" method="POST">
                                <div class="msg">Sign in to start your session</div><br>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">person</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="email" class="form-control" name="emailid" placeholder="Email ID" required autofocus>
                                    </div>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock</i>
                                    </span>
                                    <div class="form-line">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-8 p-t-5">
                                        <!--                            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                                                    <label for="rememberme">Remember Me</label>-->
                                    </div>
                                    <div class="col-xs-4">
                                        <button class="btn btn-block bg-pink waves-effect" type="submit">SIGN IN</button>
                                    </div>
                                </div>
                                <!--                    <div class="row m-t-15 m-b--20">
                                                        <div class="col-xs-6">
                                                            <a href="sign-up.html">Register Now!</a>
                                                        </div>
                                                        <div class="col-xs-6 align-right">
                                                            <a href="forgot-password.html">Forgot Password?</a>
                                                        </div>
                                                    </div>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Jquery Core Js -->
        <script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/node-waves/waves.js"></script>

        <!-- Validation Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/jquery-validation/jquery.validate.js"></script>

        <!-- Custom Js -->
        <script src="${pageContext.request.contextPath}/js/admin.js"></script>
        <script src="${pageContext.request.contextPath}/js/pages/examples/sign-in.js"></script>
    </body>

</html>
