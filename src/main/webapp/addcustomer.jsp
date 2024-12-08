<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        /* General Styles */
        body {
            background-image: linear-gradient(135deg, #fd7b03, #fff4e0);
            font-family: 'Roboto', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            font-size: 2rem;
            text-decoration: underline;
            color: #333;
        }

        /* Form Styles */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        form {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            max-width: 600px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            animation: slideIn 1s ease-out;
            width: 100%;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            font-size: 1rem;
            color: #333;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"] {
            background: #00ff00;
            color: #000;
            font-size: 1.2rem;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #e6ffcc;
            transform: translateY(-2px);
        }

        .button {
            padding: 10px 20px;
            border: none;
            background: #00ff00;
            color: #000;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button:hover {
            background: #e6ffcc;
            transform: translateY(-2px);
        }

        .back-link {
            font-size: 1rem;
            text-align: center;
            display: block;
            margin-top: 10px;
            color: #ff8c42;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-container">
    <form:form method="post" action="insertcustomer" modelAttribute="customer">
        <h3>Register Student</h3>

        <table>
            <tr>
                <td><label>Name</label></td>
                <td><form:input path="name" required="required" /></td>
            </tr>

            <tr>
                <td><label>Gender</label></td>
                <td>
                    <form:radiobutton path="gender" value="Male" required="required" />Male
                    <form:radiobutton path="gender" value="Female" required="required" />Female
                </td>
            </tr>

            <tr>
                <td><label>Email ID</label></td>
                <td><form:input path="email" required="required" /></td>
            </tr>

            <tr>
                <td><label>Password</label></td>
                <td><form:password path="password" required="required" /></td>
            </tr>

            <tr>
                <td><label>Address</label></td>
                <td><form:textarea path="address" required="required" /></td>
            </tr>

            <tr>
                <td><label>Contact No</label></td>
                <td><form:input path="contactno" required="required" /></td>
            </tr>

            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="Add" class="button" />
                    <br />
                    <a href="index.jsp" class="back-link">Back</a>
                </td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>