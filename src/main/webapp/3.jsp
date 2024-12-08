<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2f4f4f; /* Dark Slate Gray */
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            width: 60%;
            margin: 30px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #4caf50; /* Green */
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f1f1f1;
            color: #333;
        }

        input[type="submit"] {
            background-color: #4caf50; /* Green */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker Green */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #2f4f4f;
            font-weight: bold;
        }

        a:hover {
            color: #4caf50;
        }

        .section {
            background-color: #e0e0e0; /* Grey */
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
        }

        .form-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        .total {
            font-weight: bold;
            color: #4caf50;
            text-align: right;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Student Marks</h1>
</header>

<div class="container">
    <form action="markssubmit.jsp" method="post" id="marksForm">
        <div class="form-container">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" value="Emma Watson">

            <h3>Marks for Each Section</h3>

            <!-- Section A -->
            <div class="section">
                <h4>SECTION - A</h4>
                <table>
                    <thead>
                    <tr>
                        <th>Question</th>
                        <th>Marks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% int[] sectionAMarks = {5, 4, 5, 5, 4}; %>
                    <% for (int i = 1; i <= 5; i++) { %>
                    <tr>
                        <td>Q<%= i %></td>
                        <td><input type="text" name="sectionA_Q<%= i %>" value="<%= sectionAMarks[i - 1] %>" class="marks-input" oninput="calculateTotal()"></td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>

            <!-- Section B -->
            <div class="section">
                <h4>SECTION - B</h4>
                <table>
                    <thead>
                    <tr>
                        <th>Question</th>
                        <th>Marks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% int[] sectionBMarks = {4, 5, 5, 5, 4}; %>
                    <% for (int i = 1; i <= 5; i++) { %>
                    <tr>
                        <td>Q<%= i %></td>
                        <td><input type="text" name="sectionB_Q<%= i %>" value="<%= sectionBMarks[i - 1] %>" class="marks-input" oninput="calculateTotal()"></td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>

            <!-- Section C -->
            <div class="section">
                <h4>SECTION - C</h4>
                <table>
                    <thead>
                    <tr>
                        <th>Question</th>
                        <th>Marks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% int[] sectionCMarks = {4, 4, 5, 5, 4}; %>
                    <% for (int i = 1; i <= 5; i++) { %>
                    <tr>
                        <td>Q<%= i %></td>
                        <td><input type="text" name="sectionC_Q<%= i %>" value="<%= sectionCMarks[i - 1] %>" class="marks-input" oninput="calculateTotal()"></td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>

            <p class="total">Total Marks: <span id="totalMarks">78</span></p>
            <input type="submit" value="Submit">
        </div>
    </form>

    <a href="emphome.jsp">Back</a>
</div>

<script>
    function calculateTotal() {
        let total = 0;
        const inputs = document.querySelectorAll('.marks-input');
        inputs.forEach(input => {
            const value = parseInt(input.value) || 0;
            total += value;
        });
        document.getElementById('totalMarks').textContent = total;
    }
</script>

</body>
</html>
