
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Admin</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #eef2ff, #f8fafc, #e0ecff);
        min-height: 100vh;
        color: #172554;
    }

    .logo-header {
        background: white;
        display: flex;
        align-items: center;
        gap: 20px;
        padding: 15px 45px;
        min-height: 105px;
        border-bottom: 2px solid #172554;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    }

    .logo {
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

    .page-heading {
        text-align: center;
        margin: 35px 15px 25px;
    }

    .page-heading h2 {
        color: #2563eb;
        font-size: 30px;
        margin: 0 0 10px;
    }

    .page-heading p {
        color: #64748b;
        font-size: 16px;
        margin: 0;
    }

    .form-container {
        width: 90%;
        max-width: 460px;
        margin: 0 auto 45px;
        padding: 35px;
        background: white;
        border-radius: 18px;
        box-shadow: 0 10px 30px rgba(23, 37, 84, 0.12);
        border: 1px solid #dbeafe;
    }

    form {
        text-align: center;
    }

    .form-group {
        text-align: left;
        margin-bottom: 22px;
    }

    label {
        display: block;
        font-weight: bold;
        font-size: 16px;
        color: #172554;
        margin-bottom: 9px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 13px 14px;
        font-size: 15px;
        border: 1px solid #cbd5e1;
        border-radius: 8px;
        outline: none;
        transition: border-color 0.2s, box-shadow 0.2s;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #2563eb;
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
    }

    input[type="submit"] {
        width: 100%;
        padding: 14px;
        margin-top: 5px;
        border: none;
        border-radius: 8px;
        background: linear-gradient(135deg, #2563eb, #1d4ed8);
        color: white;
        font-size: 17px;
        font-weight: bold;
        cursor: pointer;
        transition: transform 0.2s, background 0.2s;
    }

    input[type="submit"]:hover {
        background: #172554;
        transform: translateY(-2px);
    }

    .footer {
        text-align: center;
        padding: 18px;
        color: #64748b;
        font-size: 13px;
    }

    @media (max-width: 600px) {
        .logo-header {
            padding: 12px 18px;
            gap: 12px;
        }

        .logo {
            width: 60px;
            height: 60px;
        }

        .logo-header h1 {
            font-size: 27px;
        }

        .form-container {
            padding: 25px 20px;
        }

        .page-heading h2 {
            font-size: 26px;
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
        <h2>Add New Admin</h2>
        <p>Create a new administrator account</p>
    </div>

    <div class="form-container">

        <form action="${pageContext.request.contextPath}/cc/saveadmin"
              method="post">

            <div class="form-group">
                <label for="adminusername">Username </label>
                <input id="adminusername"
                       name="adminusername"
                       type="text"
                       placeholder="Enter User Name"
                       required>
            </div>

            <div class="form-group">
                <label for="adminpassword">Password </label>
                <input id="adminpassword"
                       name="adminpassword"
                       type="password"
                       placeholder="Enter Password"
                       required>
            </div>

            <input name="Add Admin"
                   type="submit"
                   value="Add Admin">

        </form>

    </div>

    <div class="footer">
        &copy; 2026 Campus Connect. All rights reserved.
    </div>

</body>
</html>