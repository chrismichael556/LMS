<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
/* General Styles */
body {
  margin: 0;
  font-family: 'Roboto', sans-serif;
  background: url('images/learning-bg.jpg') no-repeat center center fixed; /* Replace with your image path */
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

/* Card Styles */
.card {
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

/* Input Fields */
input[type="email"], input[type="password"] {
  width: 90%;
  padding: 10px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Submit Button */
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

/* Card Header */
.card-header h3 {
  font-size: 1.8rem;
  text-transform: uppercase;
  color: #333;
}

/* Registration Link */
.registration-link {
  color: #ff8c42;
  text-decoration: none;
  font-weight: bold;
}

.registration-link:hover {
  text-decoration: underline;
}
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
  <div class="logo">L M S</div>
  <div>
    <a href="index.jsp">Home</a>
  
  </div>
</div>

<!-- Main Content -->
<div class="main-container">
  <div class="card">
    <div class="card-header">
      <h3>Faculty Login</h3>
    </div>

    <form method="post" action="checkemplogin">
      <table>
        <tr>
          <td><label>Email ID</label></td>
          <td><input type="email" name="email" required placeholder="Enter your email" /></td>
        </tr>

        <tr>
          <td><label>Password</label></td>
          <td><input type="password" name="pwd" required placeholder="Enter your password" /></td>
        </tr>

        <tr>
          <td colspan="2">
            <input type="submit" value="Login" class="button">
          </td>
        </tr>
      </table>
    </form>

    <br>

    <h3>
      New Registration? <a href="empreg" class="registration-link">REGISTER ..!</a>
    </h3>
  </div>
</div>

</body>
</html>
