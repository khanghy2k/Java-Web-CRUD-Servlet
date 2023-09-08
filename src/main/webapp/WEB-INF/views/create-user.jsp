<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 9/7/2023
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới tài khoản</title>
</head>
<body>
<h1>Thêm mới tài khoản</h1>
<form action="" method="post">
    <table>
        <tr>
            <td>
                <label for="id">Mã người dùng :</label>
            </td>
            <td>
                <input type="text" id="id" name="id" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="username">Tên người dùng:</label>
            </td>
            <td>
                <input type="text" id="username" name="username" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Mật khẩu:</label>
            </td>
            <td>
                <input type="password" id="password" name="password" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="status">Trạng thái:</label>
            </td>
            <td>
                <select id="status" name="status">
                    <option value="true">Hoạt động</option>
                    <option value="false">Không hoạt động</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="role">Vai trò:</label>
            </td>
            <td>
                <select id="role" name="role">
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
                <input type="number" id="balance" name="balance" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="birthday">Ngày sinh:</label>
            </td>
            <td>
                <input type="date" id="birthday" name="birthday" required><br>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Địa chỉ:</label>
            </td>
            <td>
                <input type="text" id="address" name="address"><br>
            </td>
        </tr>
    </table>
    <button type="submit">Thêm</button>
</form>
</body>
</html>
