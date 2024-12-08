<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url('images/learning-bg.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            min-height: 100vh;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background: rgba(0, 0, 0, 0.7);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
        }

        .navbar .logo {
            font-size: 1.8rem;
            color: #fff;
            font-weight: bold;
        }

        .navbar a {
            color: #00ff00;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        .navbar a:hover {
            color: #ff8c42;
        }

        /* Content Alignment */
        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin-top: 70px; /* Adjust for navbar */
        }

        /* Login Box Styles */
        .login-box {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            max-width: 400px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .logo-font {
            color: #ffc13b;
        }

        .header-title {
            font-size: 1.8rem;
            text-transform: uppercase;
            color: #333;
            margin-bottom: 30px;
        }

        .form-control {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn {
            padding: 10px 20px;
            border: none;
            background: #00ff00;
            color: #000;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #e6ffcc;
            transform: translateY(-2px);
        }

        .blink {
            color: red;
            font-size: 18px;
        }

        .registration-link {
            color: #ff8c42;
            text-decoration: none;
            font-weight: bold;
        }

        .registration-link:hover {
            text-decoration: underline;
        }

        /* Hide carousel on mobile */
        @media only screen and (max-width: 767px) {
            .hide-on-mobile {
                display: none;
            }
        }
    </style>
</head>
<body>
<%@ include file="studentnavbar.jsp" %>
<section>
    <div class="main-container">
        <div class="login-box">
            <div class="logo">
                
            </div>
            <h3 class="header-title">Login</h3>
            <form class="login-form" method="post" action="checkstudentlogin" onsubmit="return validateCaptcha()">
                <div class="form-group">
                    <input type="text" class="form-control" name="email" placeholder="Email or Username" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>

                <!-- Math Captcha Section -->
                <div class="form-group">
                    <label id="mathCaptchaQuestion"></label>
                    <input type="text" id="captchaAnswer" class="form-control" placeholder="Enter answer" required>
                    <span id="captchaError" style="color:red; display:none;">Incorrect answer, please try again.</span>
                </div>

                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">LOGIN</button>
                </div>
                <div class="form-group">
                    <div class="text-center">New Member? <a href="addcustomer" class="registration-link">Sign up Now</a></div>
                </div>
            </form>
        </div>
    </div>
</section>

<script>
    function generateCaptcha() {
        var num1 = Math.floor(Math.random() * 10) + 1;
        var num2 = Math.floor(Math.random() * 10) + 1;
        var operator = (Math.random() > 0.5) ? "+" : "-"; 
        var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
        var captchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

        window.correctCaptchaAnswer = captchaAnswer;

        document.getElementById("mathCaptchaQuestion").innerHTML = captchaQuestion;
    }

    function validateCaptcha() {
        var userAnswer = document.getElementById("captchaAnswer").value;
        if (parseInt(userAnswer) !== window.correctCaptchaAnswer) {
            document.getElementById("captchaError").style.display = "block";
            return false;
        }
        document.getElementById("captchaError").style.display = "none";
        return true; 
    }

    window.onload = generateCaptcha;
</script>

</body>
</html>