<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .registration-form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
        }
        .form-header {
            background-color: #3498db;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            border-bottom: 2px solid #2980b9;
        }
        .form-body {
            padding: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<form action="regester">
    <div class="registration-form">
        <div class="form-header">
            Registration Form
        </div>
        <div class="form-body">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="mobile">Mobile No:</label>
            <input type="tel" id="mobile" name="mobile" required>

            <label for="course">Course:</label>
            <select id="course" name="course">
                <option value="engineering">Engineering</option>
                <option value="design">Design</option>
                <option value="business">Business</option>
                <option value="science">Science</option>
            </select>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>

            <button type="submit">Register</button>
        </div>
    </div>
</form>
</body>
</html>
	