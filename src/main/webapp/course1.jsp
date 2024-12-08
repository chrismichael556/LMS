<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Handout - JavaScript Fundamentals</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Source+Serif+Pro&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #ffffff; /* White */
            margin: 0;
            padding: 0;
        }
        .handout-container {
            max-width: 900px;
            margin: 50px auto;
            background: #f3f3f3; /* Light Grey */
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #2e7d32; /* Green */
            text-align: center;
        }
        h2 {
            color: #333333; /* Black */
            margin-top: 20px;
        }
        p {
            color: #424242; /* Dark Grey */
            line-height: 1.6;
        }
        ul {
            list-style-type: disc;
            margin: 10px 0 20px 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff; /* White */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table th {
            background-color: #2e7d32; /* Green */
            color: #ffffff; /* White */
            padding: 10px;
            text-align: left;
        }
        table td {
            padding: 10px;
            text-align: left;
        }
        table tr:nth-child(even) {
            background-color: #f0f0f0; /* Light Grey */
        }
        table tr:nth-child(odd) {
            background-color: #ffffff; /* White */
        }
        .input-label {
            font-weight: bold;
            color: #2e7d32; /* Green */
        }
        .input-file {
            margin-top: 10px;
            display: block;
        }
        .submit-btn {
            background-color: #2e7d32; /* Green */
            color: #ffffff; /* White */
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        .submit-btn:hover {
            background-color: #1b5e20; /* Darker Green */
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #2e7d32; /* Green */
            font-weight: bold;
        }
        .back-link:hover {
            color: #1b5e20; /* Darker Green */
        }
        .file-details {
            font-style: italic;
            color: #666666; /* Grey */
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="handout-container">
    <h1>Course Title: JavaScript Fundamentals</h1>

    <h2>Course Description</h2>
    <p>Welcome to the <strong>JavaScript Fundamentals</strong> course! This in-depth course will equip you with advanced skills in JavaScript, including asynchronous programming, closures, promises, and modern JavaScript techniques.</p>

    <h2>Course Curriculum</h2>
    <ul>
        <li>Chapter 1: Understanding Closures</li>
        <li>Chapter 2: Mastering Promises & Async/Await</li>
        <li>Chapter 3: Working with JavaScript Modules and Bundlers</li>
        <li>Chapter 4: Advanced Object-Oriented Programming in JavaScript</li>
    </ul>

    <h2>Assignment Schedule</h2>
    <form action="coursesubmitted.jsp" method="post" enctype="multipart/form-data">
        <table>
            <thead>
            <tr>
                <th>Assignment No.</th>
                <th>Topic</th>
                <th>Due Date</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Understanding Closures</td>
                <td>19th Feb 2025</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Building with Promises</td>
                <td>02nd Dec 2025</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Modern JavaScript Modules</td>
                <td>15th Jan 2025</td>
            </tr>
            </tbody>
        </table>

        <br>
        <label for="fileUpload" class="input-label">Upload Your File</label>
        <input type="file" name="file" id="fileUpload" class="input-file" required onchange="displayFileDetails()">

        <div class="file-details" id="fileDetails"></div>

        <br>
        <input type="submit" value="Add Assignment" class="submit-btn">
    </form>

    <p><strong>Important:</strong> Please stay on track with the assignments and reach out if you encounter any difficulties. We are here to support your learning!</p>

    <a href="index.jsp" class="back-link">Back to Home</a>
</div>

<script>
    function displayFileDetails() {
        var fileInput = document.getElementById('fileUpload');
        var fileDetails = document.getElementById('fileDetails');

        var file = fileInput.files[0];

        if (file) {
            fileDetails.innerHTML = `
                <strong>File Name:</strong> ${file.name}<br>
                <strong>File Size:</strong> ${Math.round(file.size / 1024)} KB<br>
                <strong>File Type:</strong> ${file.type}
            `;
        } else {
            fileDetails.innerHTML = '';
        }
    }
</script>

</body>
</html>