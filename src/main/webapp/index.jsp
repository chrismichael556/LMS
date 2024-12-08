<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learning Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: white;
        }

        .animated-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(270deg, #ff6b6b, #feca57, #48dbfb, #1dd1a1);
            background-size: 800% 800%;
            animation: gradientAnimation 12s ease infinite;
            z-index: -1;
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        .content {
            text-align: center;
            padding: 150px 20px;
        }

        h1 {
            font-size: 60px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        p {
            font-size: 20px;
            margin-bottom: 40px;
        }

        .btn {
            background-color: #ffffff;
            color: #121212;
            font-size: 20px;
            padding: 10px 30px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background-color: #feca57;
            color: #ffffff;
        }
    </style>
</head>

<body>
    <!-- Include the Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Background Animation -->
    <div class="animated-bg"></div>

    <!-- Main Content -->
    <div class="content">
        <h1>Welcome to the LMS Portal</h1>
        <p>Explore the world of knowledge with us. Engage, Learn, and Grow.</p>
        <a href="payment.html" class="btn">Subscribe Now</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
