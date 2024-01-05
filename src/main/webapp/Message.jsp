<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HeY  MeSsAgE FoR YoU</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .box {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
            text-align: center;
            color: #333;
            border: 2px solid #007bff;
        }
        .box-header {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            border-bottom: 2px solid #0056b3;
        }
        .box-content {
            padding: 20px;
            font-size: 16px;
        }
        .message-section {
            background-color: #f1f3f5;
            padding: 20px;
            border-top: 2px solid #dee2e6;
        }
        .message-section p {
            margin: 0;
            color: #6c757d;
        }
    </style>
</head>
<body>

    <div class="box">
        <div class="box-header">
            Styled Box
        </div>
        <div class="box-content">
            <h4>${ Message}</h4>
        </div>
        <div class="message-section">
            <p>OOOPss</p>
        </div>
    </div>

</body>
</html>
    