<%-- 
    Document   : resgistration
    Created on : 19 Dec, 2016, 6:56:32 PM
    Author     : Mirza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
         <script type="text/javascript">
            $(function() {
                $("#datepicker1").datepicker({
                    autoclose: true,
                    todayHighlight: true
                }).datepicker('update', new Date());
                ;
            });

        </script>
        <script src="http://iamrohit.in/lab/js/location.js"></script>

    </head>


    <body>
       

        <div class="container" >
            <div class="col-md-5">
            </div>
            <form class="form-horizontal"  action="${pagContext.request.contextPath}/hydadmin/pages/update-candidate" method="post">
                  <input type="hidden" name="candidateid" value="${candidateid}" />
                <div class="form-group">
                    <div class="col-md-3">
                        <h2>Edit Candidate</h2>
                    </div>
                    <label class="control-label col-md-4" for="firstName">Receipt  No</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="receiptno"  placeholder="Receipt No">
                    </div>
                </div>
              
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Receipt Issue Date</label>
                    <div class="col-md-4">          
                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="text" name="receiptissuestring"  />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd1">Receipt Expiry Date</label>
                    <div class="col-md-4">          
                        <div id="datepicker1" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="text" name="receiptexpirystring"  />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
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
