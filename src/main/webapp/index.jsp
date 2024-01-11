<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
if(session.getAttribute("email")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>

<head>
    <title>Form Example</title>
</head>
<style>
    .header {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        padding: 20px 100px;
        background: transparent;
        display: flex;
        justify-content: space-between;
        align-items: center;
        z-index: 99;
        margin-top: 50px;
    }

    .logo {
        font-size: 40px;
        color: black;
        font-weight: bold;
        pointer-events: none;
        margin-left: 345px;

    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: url(images/college.jpg) no-repeat;
        background-size: cover;
        background-position: center;
    }

    /* Apply styles to the form container */
    form {
        position: relative;
        width: 400px;
        height: 440px;
        background: transparent;
        border: 2px solid rgba(255, 255, 255, .5);
        border-radius: 20px;
        backdrop-filter: blur(15px);
        box-shadow: 0 0 30px rgba(0, 0, 0, .5);
        display: block;
        justify-content: center;
        align-items: center;
        margin-top: 50px;
    }

    .input-box {
        position: relative;
        width: 100%;
        height: 50px;
        margin: 30px 0;
        margin-top: 50px;
        padding: -5px;
    }

    .input-box label {
        margin-left: 10px;
        margin-top: 70px;
        font-size: 20px;
        font-weight: bold;
    }

    .input-box select {
        width: 250px;
        height: 40px;
        background-color: gray;
    }

    .input-box #password {
        width: 250px;
        height: 20px;
        background: transparent;
        font-size: 15px;
    }

    .input-box #submit {
        width: 250px;
        height: 30px;
        margin-left: 70px;
        font-size: 17px;
        font-weight: bold;
        background: black;
        border-radius: 5px;
        color: white;
    }





    /* Style labels and inputs */
</style>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <header class="header">
        <div>
            <span class="logo">Login To Your College</span>
        </div>
    </header>
    <section>
        <div class="form">
            <div class="form-box login" method="" action="">
                <form method="post" action="index">
                    <div class="input-box">
                        <label class="dropdown1">College Name:</label>
                        <select id="dropdown1" name="dropdown1">
                            <option selected="" value="-1" disabled="">Select Your College</option>
                            <option value="Parala Maharaja Engineering College">Parala Maharaja Engineering College</option>
                            <option value="Trident Engineering College">Trident Engineering College</option>
                            <option value="Indira Gandhi Institute Of Technology">Indira Gandhi Institute Of Technology</option>
                        </select>
                    </div>


                    <div class="input-box">
                        <label class="dropdown2">Hostel No.</label>
                        <select id="dropdown2" name="dropdown2">
                            <option selected="" value="-1" disabled="">Choose Hostel No.</option>
                            <option value="Hostel 1">Hostel 1</option>
                            <option value="Hostel 2">Hostel 2</option>
                            <option value="Hostel 3">Hostel 3</option>
                        </select>
                    </div>
                    


                    <div class="input-box">
                        <label class="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>


                    <div class="input-box">
                        <input type="submit" id="submit" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/script.js"></script>
	<script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	
	
	if(status == "failed"){
		swal("Sorry", "Please Enter ValidInfo", "error");
	}	

	</script>
	
	
	
	
</body>

</html>