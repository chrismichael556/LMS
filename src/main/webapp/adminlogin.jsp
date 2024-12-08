<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Styling the background */
        body {
            background-image: url('https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-100460.jpg?t=st=1733562920~exp=1733566520~hmac=43b7f68530a5e037faa5afb8d3f1f33981db3b3c8922318542b739107b11d5f6&w=1380');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Card Container */
        .login-card {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 32px;
            width: 400px;
            text-align: center;
        }

        .login-card h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 24px;
        }

        .login-card label {
            display: block;
            text-align: left;
            font-size: 14px;
            margin: 8px 0 4px;
            color: #333;
        }

        .login-card input[type="text"],
        .login-card input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        .login-card input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
        }

        .login-card input[type="submit"]:hover {
            background-color: #218838;
        }

        .login-card a {
            display: block;
            margin-top: 16px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        .login-card a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <h2>Login to LMS</h2>
        <form method="post" action="checkadminlogin">
            <label for="uname">Username</label>
            <input type="text" id="uname" name="uname" required>
            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" required>
            <input type="submit" value="Login">
        </form>
        <a href="forgotPassword.jsp">Forgot your password? Click here</a>
        <a href="register.jsp">New to LMS? Register here</a>
    </div>
</body>
</html>