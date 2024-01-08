<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #121212;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #282c34;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
            width: 300px;
            color: #fff;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #61dafb;
            border-radius: 4px;
            background-color: #1e1e1e;
            color: #fff;
            transition: border-color 0.3s ease-in-out, background-color 0.3s ease-in-out;
        }
        input:focus {
            border-color: #61dafb;
            background-color: #333;
        }
        button {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            cursor: pointer;
            background-color: #61dafb;
            color: #121212;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s ease-in-out;
        }
        button:hover {
            background-color: #4fa3d1;
        }
        .signup-link {
            text-align: center;
            margin-top: 10px;
            color: #61dafb;
        }
        .signup-link a {
            color: #61dafb;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <form action="SignIn">

        <label for="username">Username:</label>
        <input type="text" name="username" required>

        <label for="password">Password:</label>
        <input type="password" name="password" required>

        <button type="submit">Sign In</button>

        <div class="signup-link">
            <p>New user? <a href="login.jsp">Sign up here</a></p>
        </div>    

    </form>   
</body>
</html>
    