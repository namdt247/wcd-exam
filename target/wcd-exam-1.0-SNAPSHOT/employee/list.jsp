<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Employee" %><%--
  Created by IntelliJ IDEA.
  User: namdt
  Date: 5/21/21
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<Employee> listEmployee = (ArrayList<Employee>) request.getAttribute("listEmployee"); %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>Danh sách nhân viên</h2>
        <div>
            <a href="/employee/create" class="btn btn-primary">Create</a>
        </div>
        <div class="">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Họ và tên</th>
                    <th scope="col">Ngày sinh</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Chức vụ</th>
                    <th scope="col">Phòng ban</th>
                </tr>
                </thead>
                <tbody>
                <% if (listEmployee != null && listEmployee.size() > 0) {
                    for (int i = 0; i < listEmployee.size(); i++) {
                %>
                <tr>
                    <th scope="row"><%= listEmployee.get(i).getFullName() %>
                    </th>
                    <td><%= listEmployee.get(i).getBirthday() %>
                    </td>
                    <td><%= listEmployee.get(i).getAddress() %>
                    </td>
                    <td><%= listEmployee.get(i).getPosition() %>
                    </td>
                    <td><%= listEmployee.get(i).getDepartment() %>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
    </div>
</body>
</html>
