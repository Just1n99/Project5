<%--
  Created by IntelliJ IDEA.
  User: justinyu
  Date: 12/2/23
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style>
    #posts {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #posts td, #posts th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #posts tr:nth-child(even){background-color: #f2f2f2;}
    #posts tr:hover {background-color: #ddd;}
    #posts th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #007a6a;
        color: white;
    }
</style>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteok/' + id;
    }
</script>
<html>
<head>
    <title>게시판</title>
</head>
<body>
<h1>게시판 유승준 22000456</h1>

<table id="posts" width="90%">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${posts}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>
