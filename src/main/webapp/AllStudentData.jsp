<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get All Employees</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #3498db;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-bottom: 20px;
        }

        h1 {
            color: #3498db;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        a {
            text-decoration: none;
            color: #e74c3c;
            padding: 5px;
            border-radius: 4px;
            background-color: #f2f2f2;
            transition: background-color 0.3s ease-in-out;
        }

        a:hover {
            background-color: #e74c3c;
            color: #fff;
        }
    </style>
</head>
<body>

    <header>
        <h1>Get all data from DB</h1>
    </header>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Course</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${GET_LIST_STUDENT}" var="student1">
                <tr>
                    <td><c:out value="${student1.id}" /></td>
                    <td><c:out value="${student1.name}" /></td>
                    <td><c:out value="${student1.gender}" /></td>
                    <td><c:out value="${student1.email}" /></td>
                    <td><c:out value="${student1.mobile}" /></td>
                    <td><c:out value="${student1.course}" /></td>
                    <td>
                        <a href="updateStudent?id=<c:out value='${student1.id}' />">Update</a>
                    </td>
                    <td>
                        <a href="deleteStudent?id=<c:out value='${student1.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
