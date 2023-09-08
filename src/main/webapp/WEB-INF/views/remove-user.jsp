
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Xóa tài khoản</title>
</head>
<body>
<h1>Xóa tài khoản</h1>
<form action="" method="post">
    <table>
        <tr>
            <td>
                <label for="id">Mã người dùng :</label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<c:out value="${user.id}"/> "required disabled><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="username">Tên người dùng:</label>
            </td>
            <td>
                <input type="text" id="username" name="username" value="<c:out value="${user.username}"/>" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Mật khẩu:</label>
            </td>
            <td>
                <input type="password" id="password" name="password"  value="<c:out value="${user.password}"/>"  required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label>Trạng thái:</label>
            </td>
            <td>
                <c:if test="${user.status== true}">
                    <input type="radio" name="status" checked value="true">Hoạt Động |
                    <input type="radio" name="status" checked value="false"> Không Hoạt Động
                </c:if>
                <c:if test="${user.status== false}">
                    <input type="radio" name="status" checked value="true">Hoạt Động |
                    <input type="radio" name="status" checked value="false"> Không Hoạt Động
                </c:if>

            </td>
        </tr>
        <tr>
            <td>
                <label for="role">Vai trò:</label>
            </td>
            <td>
                <select id="role" name="role"  value="<c:out value="${user.role}"/>">
                    <option value="1">Admin</option>
                    <option value="2">Employee</option>
                    <option value="3">Customer</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="balance">Số dư:</label>
            </td>
            <td>
                <input type="number" id="balance" name="balance"  value="<c:out value="${user.balance}"/>" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="birthday">Ngày sinh:</label>
            </td>
            <td>
                <input type="date" id="birthday" name="birthday" value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Địa chỉ:</label>
            </td>
            <td>
                <input type="text" id="address" name="address"  value="<c:out value="${user.address}"/>"><br>
            </td>
        </tr>
    </table>
    <button type="submit">Xóa</button>
</form>
</body>
</html>
