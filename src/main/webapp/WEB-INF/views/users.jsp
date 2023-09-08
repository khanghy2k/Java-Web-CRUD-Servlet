<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    .container {
        background-color: #f2f2f2;
        padding: 20px;
        border: 1px solid #ccc;
        text-align: center;
    }
    #reset {
        margin: 0 auto;
    }
</style>
<body>
<div class="container">
    <h2>Danh Sách Tài Khoản</h2>
    <p> <a href="create-user">Thêm mới</a> </p>
    <table border="1" id="reset">
        <tr>
            <th>ID</th>
            <th>Tài Khoản</th>
            <th>Mật Khẩu</th>
            <th>Trạng Thái</th>
            <th>Vai trò</th>
            <th>Số dư</th>
            <th>Ngày Sinh</th>
            <th>Địa Chỉ</th>
            <td>Hành Động</td>
        </tr>
       <c:forEach var="u" items="${data}">
            <tr>
                <td  >${u.id}</td>
                <td>${u.username}</td>
                <td>${u.password}</td>
                <td><c:if test="${u.status == true}">Hoạt động</c:if>
                    <c:if test="${u.status == false}"> Không Hoạt động</c:if></td>
                <td><c:choose>
                    <c:when test="${u.role == 1}">Admin</c:when>
                    <c:when test="${u.role == 2}">Employee</c:when>
                    <c:when test="${u.role == 3}">Customer</c:when> </c:choose></td>
                <td><fmt:formatNumber value="${u.balance}"/> </td>
                <td><fmt:formatDate value="${u.birthday}" pattern="dd/MM/YYYY"/> </td>
                <td>${u.address}</td>
                <td><a href="/edit-user?id=<c:out value="${u.id}"/>">Sửa</a>
                <a href="/remove-user?id=<c:out value="${u.id}"/>">Xóa</a>
                </td>

            </tr>
       </c:forEach>
    </table>
</div>
</body>
</html>
