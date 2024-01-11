<!doctype html>
<html>

<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Snippet - BBBootstrap</title>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
    <link href='' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        body {
            background-position: center;
            background-color: gray;
            background-repeat: no-repeat;
            background-size: cover;
            color: #505050;
            font-family: "Rubik", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            line-height: 1.5;
            text-transform: none
        }

        .forgot {
            background-color: yellow;
            padding: 12px;
            border: 1px solid #dfdfdf
        }

        .padding-bottom-3x {
            padding-bottom: 72px !important
        }

        .card-footer {
            background-color: pink;
        }

        .btn {
            font-size: 13px;
            background-color: black;
            color: white;
        }
        
        .btn a{
        color: white;
        text-decoration: none;
        }

        .form-control:focus {
            color: #495057;
            background-color: #fff;
            border-color: #76b7e9;
            outline: 0;
            box-shadow: 0 0 0 0px #28a745
        }

        label {
            font-size: 20px;
            font-weight: bold;
        }

        h2 {
            color: red;
        }

        small {
            font-weight: bold;
        }
    </style>
</head>

<body oncontextmenu='return false' class='snippet-body'>
    <div class="container padding-bottom-3x mb-2 mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="forgot">
                    <h2>Forgot your password?</h2>
                    <p>Change your password in three easy steps. This will help you
                        to secure your password!</p>

                </div>
                <form class="card" action="forgotPassword" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="email-for-pass">Enter your email address</label> 
                            <input class="form-control" type="text" name="email" id="email-for-pass" required>
                            <small class="form-text text-muted">Enter the registered email address . Then we'll
                                email a OTP to this address.</small>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn" type="submit">Get Otp</button>
                        <button class="btn" type="submit"><a href = "login.jsp">Back to
                            Login</a></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript' src=''></script>
    <script type='text/javascript' src=''></script>
    <script type='text/Javascript'></script>
</body>

</html>