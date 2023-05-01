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
        <title>Course Information</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Course Information</div>
        <form action="./CursoServlet" method="POST">
            <table>
                <tr>
                    <td>ID Curso</td>>
                    <td><input type="text" name="idCurso" value="${Curso.idcurso}"/></td>>
                </tr>
                <tr>
                    <td>Nombre del Curso</td>>
                    <td><input type="text" name="nombreCurso" value="${Curso.nombrecurso}"/></td>>
                </tr>
                <tr>
                    <td>Creditos</td>>
                    <td><input type="text" name="creditos" value="${Curso.creditos}"/></td>>
                </tr>
                <tr>
                    <td>Semestre</td>>
                    <td><input type="text" name="semestre" value="${Curso.semestre}"/></td>>
                </tr>
                <tr>
                    <td>Numero de Estudiantes</td>>
                    <td><input type="text" name="numeroEstudiantes" value="${Curso.numeroestudiantes}"/></td>>
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
            <th>ID Curso</th>
            <th>Nombre del Curso</th>
            <th>Creditos</th>
            <th>Semestre</th>
            <th>Numero de Estudiantes</th>
                <c:forEach items="${allCurso}" var="cur">
                <tr>
                    <td>${cur.idcurso}</td>
                    <td>${cur.nombrecurso}</td>
                    <td>${cur.creditos}</td>
                    <td>${cur.semestre}</td>
                    <td>${cur.numeroestudiantes}</td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a href="index.html">Inicio</a>
    </body>
</html>
