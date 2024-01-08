<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coding Platform Form</title>
    <style>
        body {
            font-family: 'Courier New', monospace;
            background-color: #282c34;
            color: #61dafb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #1e1e1e;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #61dafb;
            color: #282c34;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #00bcd4;
        }
    </style>
</head>
<body>
    <form action="getAll" >
        <label for="studentName">Student Name:</label>
        <input type="text" id="studentName" name="studentName" placeholder="Enter student name" required>

        <label for="course">Course:</label>
        <input type="text" id="course" name="course" placeholder="Enter course" required>

        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" placeholder="Enter gender" required>

        <input type="submit" value="Update">
        <input type="submit" value="Delete">
        <input type="submit" value="Get All">
    </form>
</body>
</html>
    