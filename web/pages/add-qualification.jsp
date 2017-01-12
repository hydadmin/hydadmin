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
       

    </head>


    <body>
       

        <div class="container" >
            <div class="col-md-5">
            </div>
            <form class="form-horizontal"  action="${pagContext.request.contextPath}/hydadmin/pages/add-qualification" method="post">
                <div class="form-group">
                    <div class="col-md-3">
                        <h2>Add Qualification</h2>
                    </div>
                    <label class="control-label col-md-4" for="firstName">Qualification Name</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="qualificationname"  placeholder="Qualification Name">
                    </div>
                </div>
              
                <div class="row">
                    <div class="form-actions col-md-offset-6">
                        <input type="submit" value="Register" class="btn btn-primary btn-sm">
                    </div>
                </div>
                <br>
            </form>

        </div>
   
</html>	
