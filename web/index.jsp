<%-- 
    Document   : candidates
    Created on : Jan 10, 2017, 10:58:00 AM
    Author     : Shaik Wahed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
﻿<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Dashboard</title>
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

        <!-- JQuery DataTable Css -->
        <link href="${pageContext.request.contextPath}/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

        <!-- Custom Css -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

        <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
        <link href="${pageContext.request.contextPath}/css/themes/all-themes.css" rel="stylesheet" />
        <style>
            .w3-animate-right{position:relative;-webkit-animation:animateright 0.4s;animation:animateright 0.4s}
            @-webkit-keyframes animateright{from{right:-300px;opacity:0} to{right:0;opacity:1}}
            @keyframes animateright{from{right:-300px;opacity:0} to{right:0;opacity:1}} .w3-animate-right {
                position: relative;
                -webkit-animation: animateright 0.4s;
                animation: animateright 0.4s;
            }
        </style>
    </head>

    <body class="theme-red">
        <!-- Page Loader -->
        <jsp:include page="include/header.jsp"/>
        <!-- #Top Bar -->
        <section>
            <!-- Start Sidebar -->
            <jsp:include page="include/left-panel.jsp"/>
            <!-- #END#  Sidebar -->
        </section>

        <section class="content">
            <div class="container-fluid">
                <!--            <div class="block-header">
                                <h2>
                                    JQUERY DATATABLES
                                    <small>Taken from <a href="https://datatables.net/" target="_blank">datatables.net</a></small>
                                </h2>
                            </div>-->

                <!-- Exportable Table -->
                <div class="row clearfix" style="min-height: 500px">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


                        <div class="card">
                            <s:if test="displaymsg==true">
                                <div class="col-md-3 alert alert-success fade in w3-animate-right" style="">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong> Login Successfully!</strong>
                                </div>
                            </s:if>
                            <div class="clearfix"></div>
                            <div class="header">
                                <h2>
                                    Un-Paid Candidates
                                </h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown">
                                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                            <i class="material-icons">more_vert</i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                    <thead>
                                        <tr>
                                            <th>Applicant ID</th>
                                            <th>Name</th>
                                            <th>Mobile No</th>
                                            <th>Passport No</th>
                                            <th>Qualification</th>
                                            <th>Designation</th>
                                            <th>Total Exp</th>
                                            <th>City</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <s:iterator value="unpaidcandidatelist" var="ac">
                                            <tr>
                                                <td><s:property value="#ac.applicantid"/></td>
                                                <td><s:property value="#ac.firstname"/> <s:property value="#ac.lastname"/></td>
                                                <td><s:property value="#ac.mobileno"/></td>
                                                <td><s:property value="#ac.passportno"/></td>
                                                <td><s:property value="#ac.qualification"/></td>
                                                <td><s:property value="#ac.designation"/></td>
                                                <td><s:property value="#ac.totalexp"/></td>
                                                <td><s:property value="#ac.city"/></td>
                                                <td>
                                                    <a href="${pagContext.request.contextPath}/hydadmin/pages/to-edit-candidate-${ac.id}" class="btn btn-primary">Edit Details</a>
                                                    <a style="margin-top: 2px" href="${pagContext.request.contextPath}/hydadmin/pages/to-edit-status-${ac.id}" class="btn btn-primary">Edit Status</a>
                                                </td>
                                            </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #END# Exportable Table -->
            </div>
        </section>

        <!-- Jquery Core Js -->
        <script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Select Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap-select/js/bootstrap-select.js"></script>

        <!-- Slimscroll Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/node-waves/waves.js"></script>

        <!-- Jquery DataTable Plugin Js -->
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

        <!-- Custom Js -->
        <script src="${pageContext.request.contextPath}/js/admin.js"></script>
        <script src="${pageContext.request.contextPath}/js/pages/tables/jquery-datatable.js"></script>

        <!-- Demo Js -->
        <script src="${pageContext.request.contextPath}/js/demo.js"></script>
    </body>

</html>
