<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="../node_modules/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<input type="hidden" id="status1" value="<%= request.getAttribute("status1") %>">
<input type="hidden" id="status2" value="<%= request.getAttribute("status2") %>">
<input type="hidden" id="status3" value="<%= request.getAttribute("status3") %>">
<input type="hidden" id="status4" value="<%= request.getAttribute("status4") %>">
<input type="hidden" id="status5" value="<%= request.getAttribute("status5") %>">
<input type="hidden" id="status6" value="<%= request.getAttribute("status6") %>">
    <header class="header">

        <div>
            <span class="logo">LOGO</span>
        </div>

        <nav class="navbar">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
            <button class="btnLogin-popup">Login</button>
        </nav>
    </header>
    
   

    <section>
        <div class="form">
            <span class="bi bi-x"></span>
            <div class="form-box login" >
                <h2>Login</h2>
                <form method="post" action="login">

                    <div class="input-box">
                        <span class="bi bi-envelope-fill"></span>
                        <input type="email" name="email" id="email">
                        <label>Email</label>
                    </div>

                    <div class="input-box">
                        <span class="bi bi-lock-fill"></span>
                        <input type="password" name="pass" id="pass">
                        <label>Password</label>
                    </div>

                    <div class="remember">
                        <label><input type="checkbox">Remember me</label>
                        <a href="forgotPassword.jsp">Forgot Password?</a>
                    </div>

                    <button type="submit" class="btn" name="signup" id="signup" value="Register">Login</button>

                    <div class="login-register">
                        <p>Don't have an account?<a href="#" class="register-link">Register</a></p>
                    </div>
                </form>
            </div>




            <div class="form-box register" >
                <h2>Registration</h2>
                <form method="post" action="register">

                    <div class="input-box">
                        <span class="bi bi-person-fill"></span>
                        <input type="text" name="name" id="name" required>
                        <label>UserName</label>
                    </div>

                    <div class="input-box">
                        <span class="bi bi-envelope-fill"></span>
                        <input type="email" name="email" id="email" required>
                        <label>Email</label>
                    </div>


                    <div class="input-box">
                        <span class="bi bi-lock-fill"></span>
                        <input type="password" name="pass" id="pass" required>
                        <label>Password</label>
                    </div>

                    <div class="remember">
                        <label><input type="checkbox">I agree to the terms & conditions</label>

                    </div>

                    <button type="submit" name="signup" id="signup" class="btn" value="Register">Register</button>

                    <div class="login-register">
                        <p>Already have an account?
                            <a href="#" class="login-link">Login</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </section>


    
	<script src="js/script.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	var status1 = document.getElementById("status1").value;
	var status2 = document.getElementById("status2").value;
	var status3 = document.getElementById("status3").value;
	var status4 = document.getElementById("status4").value;
	var status5 = document.getElementById("status5").value;
	var status6 = document.getElementById("status6").value;
	
	if(status == "success"){
		swal("Congrats", "Account Created Successfully", "success");
	}
	if(status1 == "invalidEmail"){
		swal("Sorry", "Please Enter userName", "error");
	}
	if(status2 == "invalidPassword"){
		swal("Sorry", "Please Enter Password", "error");
	}
	if(status3 == "faileds"){
		swal("Sorry", "Wrong UserName and Password", "error");
	}
	if(status4 == "resetSuccess"){
		swal("Congrats", "Password Reset Successfully", "success");
	}
	if(status5 == "resetFailed"){
		swal("Sorry", "Password not Reset! Try Again", "error");
	}
	if(status5 == "passFailed"){
		swal("Sorry", "Password not Matching! Try Again", "error");
	}

	</script>

</body>

</html>