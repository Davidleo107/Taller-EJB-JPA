<%-- 
    Document   : studentinfo
    Created on : Apr 7, 2023, 9:48:03 AM
    Author     : David Reinoso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Information</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Student Information</div>
        <form action="./StudentServlet" method="POST">
            <table>
                <tr>
                    <td>ID Estudiante</td>>
                    <td><input type="text" name="studentId" value="${Estudiante.studentId}"/></td>>
                </tr>
                <tr>
                    <td>Nombre</td>>
                    <td><input type="text" name="firstname" value="${Estudiante.firstname}"/></td>>
                </tr>
                <tr>
                    <td>Apellido</td>>
                    <td><input type="text" name="lastname" value="${Estudiante.lastname}"/></td>>
                </tr>
                <tr>
                    <td>Año</td>>
                    <td><input type="text" name="yearLevel" value="${Estudiante.yearLevel}"/></td>>
                </tr>
  
                <tr>
                    <td colspan ="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>>
                </tr>
            </table> 
        </form>
        <br>
        <table border="1">
            <th>ID Estudiante</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Año</th>
                <c:forEach items="${allEstudiante}" var="stud">
                <tr>
                    <td>${stud.studentId}</td>
                    <td>${stud.firstname}</td>
                    <td>${stud.lastname}</td>
                    <td>${stud.yearLevel}</td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a href="index.html">Inicio</a>
    </body>
</html>
