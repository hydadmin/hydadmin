<%-- 
    Document   : resgistration
    Created on : 19 Dec, 2016, 6:56:32 PM
    Author     : Mirza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title> Hyderabadmanpower </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript">
            $(function() {
                $("#datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true
                }).datepicker('update', new Date());
                ;
            });

        </script>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <script src="../js/location.js"></script>

    </head>


    <body>


        <div class="clearfix"></div>
        <div class="container" >
            <div class="col-md-5">
            </div>
            <form class="form-horizontal"  action="${pagContext.request.contextPath}/hydadmin/pages/update-status" method="post">


                <div class="form-group">
                    <div class="col-md-3">
                        <h2>Edit Status</h2>
                    </div>
                    <input type="hidden" name="candidateid" value="${candidateid}" />
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Status</label>
                    <div class="col-md-4">      
                        <select  name="statusid" class="form-control input-sm">
                            <option value="">Select</option>
                            <s:iterator value="statuslist" var="sl">
                                <option value="${sl.id}">${sl.statusname}</option>
                            </s:iterator>
                        </select>


                    </div>
                </div>


                <div class="row">
                    <div class="form-actions col-md-offset-6">
                        <a href="${pagContext.request.contextPath}/hydadmin/pages/to-unpaid-candidates"  class="btn btn-warning btn-sm">Cancel</a>
                        <input type="submit" value="Update" class="btn btn-primary btn-sm">
                    </div>
                </div>
                <br>
            </form>

        </div>

</html>	
