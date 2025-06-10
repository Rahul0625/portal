<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Something Went Wrong</title>
  <script type="text/javascript"  src="${pageContext.request.contextPath}/resourcesNew/js/urlHide.js"></script>

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      color: #333;
      text-align: center;
      padding: 50px;
    }
    .error-container {
      max-width: 600px;
      margin: auto;
    }
    .error-code {
      font-size: 100px;
      font-weight: bold;
      color: #dc3545;
    }
    .error-message {
      font-size: 20px;
      margin-bottom: 30px;
    }
    .btn {
      display: inline-block;
      padding: 12px 24px;
      background-color: #007bff;
      color: #fff;
      border-radius: 5px;
      text-decoration: none;
      font-weight: bold;
      margin-top: 10px;
    }
    .btn:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="error-container">
  <div class="error-code">⚠️</div>
  <h1>Oops! Something went wrong.</h1>
  <p class="error-message">We couldn’t load the page you’re looking for.<br>Please try again later or contact support.</p>
  <a href="${pageContext.request.contextPath}" class="btn">To Home Page</a>
</div>
</body>
</html>
