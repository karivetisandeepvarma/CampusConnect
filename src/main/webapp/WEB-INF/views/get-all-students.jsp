
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cc.model.Student" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students Data</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    background: #f1f5f9;
    color: #1e293b;
    min-height: 100vh;
}

/* Logo Header */
.logo-header {
    background: white;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    padding: 15px 45px;
    min-height: 105px;
    gap: 20px;
    border-bottom: 2px solid #172554;
    box-shadow: 0 3px 10px rgba(15, 23, 42, 0.06);
}

.logo-header .logo {
    width: 75px;
    height: 75px;
    object-fit: contain;
}

.logo-header h1 {
    margin: 0;
    font-size: 36px;
    color: #172554;
}

.logo-header h1 span {
    color: #2563eb;
}

/* Page Heading */
.page-heading {
    background: linear-gradient(135deg, #172554, #1e40af);
    color: white;
    padding: 35px 25px;
    text-align: center;
}

.page-heading h2 {
    font-size: 30px;
    margin-bottom: 8px;
}

.page-heading p {
    color: #dbeafe;
    font-size: 15px;
}

/* Main Content */
.container {
    width: 95%;
    max-width: 1450px;
    margin: 35px auto;
    background: white;
    padding: 25px;
    border-radius: 14px;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.08);
}

.table-wrapper {
    width: 100%;
    overflow-x: auto;
    border-radius: 8px;
}

table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    white-space: nowrap;
}

th {
    background: #172554;
    color: white;
    padding: 15px 12px;
    text-align: left;
    font-size: 14px;
    font-weight: 600;
}

td {
    padding: 13px 12px;
    border-bottom: 1px solid #e2e8f0;
    font-size: 14px;
}

tbody tr:nth-child(even) {
    background: #f8fafc;
}

tbody tr:hover {
    background: #eff6ff;
    transition: background 0.2s ease;
}

/* Action Links */
td a {
    text-decoration: none;
    font-weight: 600;
    color: #2563eb;
    transition: color 0.2s ease;
}

td a:hover {
    color: #1e3a8a;
    text-decoration: underline;
}

/* Dashboard Button */
form {
    text-align: center;
    margin: 30px 0 10px;
}

form input[type="submit"] {
    background: #172554;
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 7px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: background 0.2s ease, transform 0.2s ease;
}

form input[type="submit"]:hover {
    background: #2563eb;
    transform: translateY(-2px);
}

/* Footer */
footer {
    text-align: center;
    padding: 20px;
    color: #64748b;
    font-size: 13px;
}

/* Responsive Design */
@media (max-width: 600px) {
    .logo-header {
        padding: 12px 18px;
        gap: 12px;
    }

    .logo-header .logo {
        width: 60px;
        height: 60px;
    }

    .logo-header h1 {
        font-size: 27px;
    }

    .page-heading {
        padding: 25px 15px;
    }

    .page-heading h2 {
        font-size: 25px;
    }

    .container {
        width: 96%;
        padding: 12px;
        margin: 20px auto;
    }
}
</style>
</head>

<body>

    <div class="logo-header">
        <img
            src="${pageContext.request.contextPath}/images/campus-connect-logo.png"
            alt="Campus Connect Logo"
            class="logo">
        <h1>Campus <span>Connect</span></h1>
    </div>

    <div class="page-heading">
        <h2>Students Data</h2>
        <p>View and manage registered student information</p>
    </div>

    <div class="container">

        <div class="table-wrapper">
            <table border="1">
                <tr>
                    <th>Student Id</th>
                    <th>Student UserName</th>
                    <th>Student Password</th>
                    <th>Student Full Name</th>
                    <th>Student Age</th>
                    <th>Student Email Id</th>
                    <th>Student Mobile Num</th>
                    <th>Student Department</th>
                    <th>Student City</th>
                    <th>Action</th>
                </tr>

                <%
                    List<Student> list =
                        (List<Student>) request.getAttribute("list");

                    for(Student st:list)
                    {
                %>
                <tr>
                    <td><%= st.getStudentId() %> </td>
                    <td><%= st.getStudentUsername() %> </td>
                    <td><%= st.getStudentPassword() %></td>
                    <td><%= st.getStudentName() %> </td>
                    <td><%= st.getStudentAge() %> </td>
                    <td><%= st.getStudentEmailId() %></td>
                    <td><%= st.getStudentMobileNumber() %></td>
                    <td><%= st.getStudentDepartment() %></td>
                    <td><%= st.getStudentCity() %></td>
                    <td>
                        <a href="students/update/<%= st.getStudentId() %>">Update</a>
                        |
                        <a href="students/delete/<%= st.getStudentId() %>">Delete</a>
                    </td>
                <% } %>
                </tr>

            </table>
        </div>

        <br><br>

        <form action="${pageContext.request.contextPath}/cc/admindashboard">
            <input type="submit" name="dashboard" value="Dashboard">
        </form>

    </div>

    <footer>
        © 2026 Campus Connect | All Rights Reserved
    </footer>

</body>
</html>
