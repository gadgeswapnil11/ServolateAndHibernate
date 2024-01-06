<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Information</title>
    <style>
        body {
            background-color: #111;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            flex-direction: column;
        }

        h2 {
            color: #66c2ff;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px;
            background-color: #333;
            color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #555;
            color: #66c2ff;
        }
    </style>
</head>
<body>

    <h2>Student Information</h2>

    <table>
        <thead>
            <tr>
                <th>Year</th>
                <th>CGPA</th>
                <th>Name</th>
                <th>Email</th>
                <th>ID</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2022</td>
                <td>3.8</td>
                <td>John Doe</td>
                <td>john.doe@example.com</td>
                <td>123456</td>
            </tr>
            <tr>
                <td>2023</td>
                <td>3.9</td>
                <td>Jane Smith</td>
                <td>jane.smith@example.com</td>
                <td>789012</td>
            </tr>
            <!-- Add more rows as needed -->
        </tbody>
    </table>

</body>
</html>
    