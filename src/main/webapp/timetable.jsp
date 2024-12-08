<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <title>Faculty Time Table</title>
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

        .container {
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .time-table {
            width: 100%;
            border-collapse: collapse;
        }

        .time-table th, .time-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .time-table th {
            background-color: #4caf50;  /* Green */
            color: white;
        }

        .time-table td {
            background-color: #f5f5f5;
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

        .back-btn {
            background-color: #4caf50;  /* Green */
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .back-btn:hover {
            background-color: #45a049;  /* Darker Green */
        }
    </style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<header>
    <h1>Faculty Time Table</h1>
</header>

<div class="container">
    <h3>Faculty Name: Prof. John Doe</h3>
    <h4>Department: Computer Science</h4>

    <table class="time-table">
        <thead>
        <tr>
            <th>Time</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>9:00 AM - 10:00 AM</td>
            <td>CS101 - Intro to Programming</td>
            <td>CS102 - Data Structures</td>
            <td>CS101 - Intro to Programming</td>
            <td>CS103 - Algorithms</td>
            <td>CS102 - Data Structures</td>
        </tr>
        <tr>
            <td>10:00 AM - 11:00 AM</td>
            <td>CS105 - Computer Networks</td>
            <td>CS104 - Operating Systems</td>
            <td>CS105 - Computer Networks</td>
            <td>CS106 - Database Systems</td>
            <td>CS104 - Operating Systems</td>
        </tr>
        <tr>
            <td>11:00 AM - 12:00 PM</td>
            <td>CS106 - Database Systems</td>
            <td>CS101 - Intro to Programming</td>
            <td>CS106 - Database Systems</td>
            <td>CS107 - Software Engineering</td>
            <td>CS103 - Algorithms</td>
        </tr>
        <tr>
            <td>12:00 PM - 1:00 PM</td>
            <td>CS104 - Operating Systems</td>
            <td>CS105 - Computer Networks</td>
            <td>CS104 - Operating Systems</td>
            <td>CS102 - Data Structures</td>
            <td>CS107 - Software Engineering</td>
        </tr>
        <tr>
            <td>2:00 PM - 3:00 PM</td>
            <td>CS107 - Software Engineering</td>
            <td>CS103 - Algorithms</td>
            <td>CS107 - Software Engineering</td>
            <td>CS101 - Intro to Programming</td>
            <td>CS105 - Computer Networks</td>
        </tr>
        </tbody>
    </table>

    <br>
    <button class="back-btn" onclick="window.history.back();">Back</button>
</div>

<footer>
    <p>&copy; 2024 Faculty Timetable Management System</p>
</footer>

</body>
</html>