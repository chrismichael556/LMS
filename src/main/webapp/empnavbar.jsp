<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Webpage with Timetable Button</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background-color: #f4f4f9;
      color: #333;
    }
    .top-right-button {
      position: absolute;
      top: 20px;
      right: 20px;
    }
    .top-right-button button {
      padding: 10px 20px;
      font-family: 'Poppins', sans-serif;
      font-size: 16px;
      font-weight: 500;
      background-color: rgba(25, 25, 25, 1);
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    .top-right-button button:hover {
      background-color: #444;
    }
    .content {
      text-align: center;
      padding: 50px;
    }
    h1 {
      font-size: 2.5em;
      font-weight: 600;
    }
    p {
      font-size: 1.2em;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <!-- Timetable Button -->
  <div class="top-right-button">
    <button onclick="location.href='timetable.jsp';">Timetable</button>
    <button onclick="location.href='emplogin';">Logout</button>
  </div>

  <!-- Main Content -->
 
</body>
</html>
