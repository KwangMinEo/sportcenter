<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>ADD</title>
<!-- <link href="css/signUp1.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!------ Include the above in your HEAD tag ---------->




</head>
<body class="sign_body">


<div class="page-container">
            
            <form action="signUpinsert.center" method="get" name="signUp_form">
			<h1>Sign Up</h1>
				<input type="text" name="id" class="Id" placeholder="id">
				<input type="password" name="pwd" class="Address" placeholder="password">
                <input type="text" name="name" class="Name" placeholder="Name">
                <input type="text" name="phone" class="Tele" placeholder="Number Phone">
                <input type="text" name="bdate" class="date of birth" placeholder="date of birth">
                <input type="number" name="gender" class="gender" placeholder="gender">
				<input type="email" name="email" class="Email" placeholder="Email">
                <input type="text" name="loc" class="Home address" placeholder="Home address">
                <button type="submit" value="Add" name="submit">Submit</button>
            </form>
        </div>
		

</body>
</html>