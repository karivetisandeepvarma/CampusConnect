
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f1f5f9;
        color: #1e293b;
    }

    /* Campus Connect Logo Section */
    .logo-header {
        background: white;
        display: flex;
        align-items: center;
        justify-content: flex-start;
        padding: 15px 45px;
        min-height: 105px;
        gap: 20px;
        border-bottom: 2px solid #172554;
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

    .header {
        background-color: #172554;
        color: white;
        text-align: center;
        padding: 25px 15px;
    }

    .header h1 {
        margin: 0;
        font-size: 32px;
    }

    .header h3 {
        margin: 10px 0 0;
        font-weight: normal;
        color: #cbd5e1;
    }

    .dashboard {
        max-width: 900px;
        width: 90%;
        margin: 50px auto;
        text-align: center;
    }

    .dashboard h2 {
        color: #172554;
        font-size: 30px;
        margin-bottom: 10px;
    }

    .welcome {
        color: #64748b;
        font-size: 16px;
        margin-bottom: 35px;
    }

    .button-container {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 25px;
    }

    .btn {
        min-height: 140px;
        padding: 25px 15px;
        border: none;
        border-radius: 12px;
        color: white;
        font-size: 19px;
        font-weight: bold;
        cursor: pointer;
        transition: transform 0.2s, opacity 0.2s;
    }

    .btn:hover {
        opacity: 0.9;
        transform: translateY(-4px);
    }

    .btn:focus-visible {
        outline: 3px solid #0f172a;
        outline-offset: 4px;
    }

    .btn span {
        display: block;
        font-size: 14px;
        font-weight: normal;
        margin-top: 12px;
    }

    .view {
        background-color: #2563eb;
    }

    .student {
        background-color: #059669;
    }

    .admin {
        background-color: #7c3aed;
    }

    .marks {
        background-color: #d97706;
    }

    .footer {
        text-align: center;
        padding: 20px;
        color: #64748b;
        font-size: 13px;
    }

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

        .dashboard {
            margin: 30px auto;
        }

        .button-container {
            grid-template-columns: 1fr;
            gap: 18px;
        }

        .header h1 {
            font-size: 27px;
        }

        .btn {
            min-height: 110px;
        }
    }
</style>
</head>

<body>

    <!-- Campus Connect Logo Section -->
    <div class="logo-header">
        <img
            src="${pageContext.request.contextPath}/images/campus-connect-logo.png"
            alt="Campus Connect Logo"
            class="logo">

        <h1>Campus <span>Connect</span></h1>
    </div>

    <!-- Existing Admin Portal Header -->
    <div class="header">
        <h1>Campus Connect</h1>
        <h3>Admin Portal</h3>
    </div>

    <div class="dashboard">

        <h2>Admin Dashboard</h2>

        <p class="welcome">
            Welcome, Admin! Manage students and academic records.
        </p>

        <div class="button-container">

            <button type="button" class="btn view"
                onclick="location.href='${pageContext.request.contextPath}/cc/viewStudents'">
                View All Students
                <span>View registered student details</span>
            </button>

            <button type="button" class="btn student"
                onclick="location.href='${pageContext.request.contextPath}/cc/addStudent'">
                Add Student
                <span>Register a new student</span>
            </button>

            <button type="button" class="btn admin"
                onclick="location.href='${pageContext.request.contextPath}/cc/addAdmin'">
                Add Admin
                <span>Create a new administrator account</span>
            </button>

            <button type="button" class="btn marks"
                onclick="location.href='${pageContext.request.contextPath}/cc/uploadMarks'">
                Upload Student Results
                <span>Enter and manage academic marks</span>
            </button>

        </div>

    </div>

    <div class="footer">
        &copy; 2026 Campus Connect. All rights reserved.
    </div>

</body>
</html>
