<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý Nhân viên</title>
</head>
<body>
	<div align="center">
		<h1>Danh sách Nhân viên</h1>

		<table border="1">

			<th>Tên</th>
			<th>Email</th>
			<th>Địa chỉ</th>
			<th>Số điện thoại</th>
			<th>Hành động</th>

			<c:forEach var="employee" items="${listEmployee}">
				<tr>

					<td>${employee.name}</td>
					<td>${employee.email}</td>
					<td>${employee.address}</td>
					<td>${employee.telephone}</td>
					<td><a href="editEmployee?id=${employee.id}">Sửa</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteEmployee?id=${employee.id}">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			Tạo mới nhân viên <a href="newEmployee">bấm vào đây</a>
		</h4>
		
		<h1>Danh sách Dự án</h1>

		<table border="1">

			<th>Tên Dự án</th>
			<th>Mô tả</th>
			<th>Hành động</th>

			<c:forEach var="project" items="${listProject}">
				<tr>

					<td>${project.project_name}</td>
					<td>${project.project_des}</td>
					<td><a href="editProject?id=${project.id}">Sửa</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteProject?id=${project.id}">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			<a href="newProject">Thêm dự án mới</a>
		</h4>
	</div>
</body>
</html>