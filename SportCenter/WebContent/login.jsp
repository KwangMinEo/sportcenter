<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<link href="css/login.css" rel="stylesheet">
<link href="js/login.css" rel="stylesheet">

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
              <form>
                <div class="form-label-group">
                  <input type="text" id="userid" class="form-control" placeholder="userid" required autofocus oninvalid="this.setCustomValidity('영어 + 숫자 조합으로 입력해주세요')" oninput="setCustomValidity('')">
                  <label for="userid">UserID</label>
                  	
                </div>

                <div class="form-label-group">
                  <input type="password" id="userpwd" class="form-control" placeholder="Password" required oninvalid="this.setCustomValidity('영어 + 숫자 , 특수문자 조합으로 입력해주세요')" oninput="setCustomValidity('')">
                  <label for="userpwd">Password</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1" style="color: black;">Remember password</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
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
