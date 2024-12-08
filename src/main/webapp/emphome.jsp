<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2f4f4f;  /* Dark Slate Gray */
            color: white;
            padding: 15px 20px;
            text-align: center;
        }

        .welcome-message {
            font-size: 18pt;
            font-family: cursive;
            padding: 10px 20px;
            color: #333;
        }

        .container {
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .students-table {
            width: 100%;
            border-collapse: collapse;
        }

        .students-table th, .students-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .students-table th {
            background-color: #4caf50;  /* Green */
            color: white;
        }

        .students-table td {
            background-color: #e0e0e0;  /* Grey */
        }

        .students-table tr:hover {
            background-color: #d1e7d1;  /* Light Green on hover */
        }

        footer {
            background-color: #2f4f4f;  /* Dark Slate Gray */
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        .view-btn {
            background-color: #4caf50;  /* Green */
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .view-btn:hover {
            background-color: #45a049;  /* Darker Green */
        }
    </style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<header>
    <h1>Student Marks Dashboard</h1>
</header>

<p class="welcome-message">Hello, ${ename}. Here's the list of students and their marks:</p>

<div class="container">
    <table class="students-table">
        <thead>
        <tr>
            <th>Student ID</th>
            <th>Marks Obtained</th>
            <th>Subject</th>
            <th>View</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>2200032983</td>
            <td>85</td>
            <td>Mathematics</td>
            <td><button class="view-btn" onclick="window.location.href='1.jsp'">View</button></td>
        </tr>
        <tr>
            <td>2200032984</td>
            <td>90</td>
            <td>Science</td>
            <td><button class="view-btn" onclick="window.location.href='2.jsp'">View</button></td>
        </tr>
        <tr>
            <td>2200032985</td>
            <td>78</td>
            <td>English</td>
            <td><button class="view-btn" onclick="window.location.href='3.jsp'">View</button></td>
        </tr>
        <tr>
            <td>2200032986</td>
            <td>88</td>
            <td>History</td>
            <td><button class="view-btn" onclick="window.location.href='4.jsp'">View</button></td>
        </tr>
        </tbody>
    </table>
</div>



</body>
</html>
