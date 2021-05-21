<%--
  Created by IntelliJ IDEA.
  User: namdt
  Date: 5/21/21
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>Tạo mới nhân viên</h2>
        <form action="/employee/create" method="post">
            <div class="form-group">
                <label>Họ và tên</label>
                <input type="text" class="form-control" name="fullName" placeholder="Họ và tên">
            </div>
            <div class="form-group">
                <label>Ngày sinh</label>
                <input type="date" class="form-control" name="birthday" />

            </div>
            <div class="form-group">
                <label>Địa chỉ</label>
                <input type="text" name="address" class="form-control" placeholder="Nhập địa chỉ">
            </div>
            <div class="form-group">
                <label>Chức vụ</label>
                <input type="text" name="position" class="form-control" placeholder="Nhập chức vụ">
            </div>
            <div class="form-group">
                <label>Phòng ban</label>
                <input type="text" name="department" class="form-control" placeholder="Phòng ban">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-danger ml-2">Reset</button>
        </form>
    </div>
</body>
</html>
