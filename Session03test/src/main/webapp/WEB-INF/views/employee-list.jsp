<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/7/2026
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <style>
        table { border-collapse: collapse; width: 80%; margin: 20px 0; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: white; }
    </style>
</head>
<body>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Căn hộ</th>
            <th>Lương</th>
            <th>Đánh giá</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items = "${employee}" var="emp" varStatus="loop">
        <tr>
            <td>${loop.count}</td>

            <td><c:out value="${emp.fullName}"/></td>

            <td>${emp.department}</td>

            <td>${emp.salary}</td>
            <td>
                <c:choose>
                    <c:when test="${emp.salary >= 10000}">Mức lương cao</c:when>
                    <c:otherwise>Mức lương cơ bản</c:otherwise>
                </c:choose>
            </td>
        </tr>
        </c:forEach>
    </tbody>
    </table>
</body>
</html>
