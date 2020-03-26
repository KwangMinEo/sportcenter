<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<link href="css/login.css" rel="stylesheet">
<link href="js/login.css" rel="stylesheet">

<script type="text/javascript">
jQuery(function() {
    jQuery(document).on("click", "form.ajax button:submit, form.ajax input:submit, form.ajax input:image", function(e) {
        e.preventDefault();
        e.stopPropagation();
        var f  = this.form;
        var $f = jQuery(f);
        var $b = jQuery(this);
        var $t, t;
        var result = true;
        $f.find("input, select, textarea").each(function(i) {
            $t = jQuery(this);
            if($t.prop("required")) {
                if(!jQuery.trim($t.val())) {
                    t = jQuery("label[for='"+$t.attr("id")+"']").text();
                    result = false;
                    $t.focus();
                    alert(t+" 필수 입력입니다.");
                    return false;
                }
            }
        });
        if(!result)
            return false;
    });
});
</script>
</head>
<body>

<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Welcome back!</h3>
              <form>
                <div class="form-label-group">
                  <input type="text" id="userid" class="form-control" placeholder="userid" required autofocus >
                  <label for="userid">UserID</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="userpwd" class="form-control" placeholder="Password" required>
                  <label for="userpwd">Password</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">Remember password</label>
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
