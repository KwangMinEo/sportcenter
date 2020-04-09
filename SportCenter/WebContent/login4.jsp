<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<link href="css/login.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<script type="text/javascript"> 
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.login_form.getelementbyid(userid);
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("ID를 입력해주세요");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})

document.addEventListener("DOMContentLoaded", function() {
    var elements = document.login_form.getelementbyid(userpwd);
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("PASSWORD 입력해주세요");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})
</script>
 
</head>
<body>

<div class="container-fluid">
  <div class="row no-gutter" style="width: 104%;">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6" style="background-color: white;">
      <div class="login d-flex align-items-center py-5">
        <div class="container" style="position: absolute;left: 15%; right:30% margin: 0 0 0 -10%;">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto" style="width: 500px">
              <h3 class="login-heading mb-4">Welcome back!</h3>
              <form name="login_form" action="Login.center" method="get">
                <div class="form-label-group">
                  <input type="text" id="userid" name="userid" class="form-control" placeholder="userid" required autofocus oninvalid="this.setCustomValidity('영어 + 숫자 조합으로 입력해주세요')" oninput="setCustomValidity('')">
                  <label for="userid">UserID</label>
                  	
                </div>

                <div class="form-label-group">
                  <input type="text" id="userpwd" name="userpwd"class="form-control" placeholder="Password" required oninvalid="this.setCustomValidity('영어 + 숫자 , 특수문자 조합으로 입력해주세요')" oninput="setCustomValidity('')">
                  <label for="userpwd">Password</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1" style="color: black;">Remember password</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" id="btnlogin" type="submit" onclick="chk()">Sign in</button>
                <div class="text-center">
                  <a class="small" href="#">Forgot password?</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
