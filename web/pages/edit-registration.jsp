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
    
        <script src="http://iamrohit.in/lab/js/location.js"></script>

    </head>


    <body>
       

        <div class="container" >
            <div class="col-md-5">
            </div>
            <form class="form-horizontal"  action="${pagContext.request.contextPath}/hydadmin/pages/register" method="post">
                <div class="form-group">
                    <div class="col-md-3">
                        <h2>Register form</h2>
                    </div>
                    <label class="control-label col-md-4" for="firstName">First Name</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="firstname"  placeholder="First Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Last Name</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="lastname"  placeholder="Last Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Mobile Number</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="mobileno" placeholder="Mobile Number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Gender</label>
                    <div class="col-md-4">          
                        <div class="radios">
                            <label class="radio-inline"> 
                                <input  type="radio"  value="male" name="gender"> Male
                            </label>
                            <label class="radio-inline"> 
                                <input  type="radio"  value="female" name="gender"> Female
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Email</label>
                    <div class="col-md-4">          
                        <input type="email" class="form-control" name="emailid" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Date of Birth</label>
                    <div class="col-md-4">          
                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="text" name="dateofbirth" readonly />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Passport Number</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="passportno" placeholder="Passport Number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Religion</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="religion" placeholder="Religion">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Education</label>
                    <div class="col-md-4">          
                        <select  name="qualification" class="form-control input-sm">
                            <option value="">Select</option>
                            <option value="BSC">BSC</option>
                            <option value="BTECH">BTECH</option>
                            <option value="MCA">MCA</option>
                            <option value="BCOM">BCOM</option>
                            <option value="DIPLOMA">DIPLOMA</option> 
                            <option value="ITI">ITI</option> 
                            <option value="Other">Other</option> 
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Designation</label>
                    <div class="col-md-4">          
                        <select  name="designation" class="form-control input-sm">
                            <option value="">Select</option>
                            <option value="Safety Officer">Safety Officer</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Total Experience</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="totalexp" placeholder="Total Experience">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Gulf Experience</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="gulfexp" placeholder="Gulf Experience">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd"name>Indian Experience</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="indianexp" placeholder="Indian Experience">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Home Address</label>
                    <div class="col-md-4">          
                        <input type="text" class="form-control" name="address" placeholder="Home address">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">Country</label>
                    <div class="col-md-4">          
                        <select name="country" class="form-control input-sm countries" id="countryId">
                            <option value="">Select Country:</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">State</label>
                    <div class="col-md-4">          
                        <select name="state" class="form-control input-sm states" id="stateId">
                            <option value="">Select State:</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="pwd">City</label>
                    <div class="col-md-4">          
                        <select name="city" class="form-control input-sm cities" id="cityId">
                            <option value="">Select City</option>
                        </select>
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
