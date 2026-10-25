
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f1f5f9;
        color: #172554;
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

    /* Page Header */
    .header {
        background: #172554;
        color: white;
        text-align: center;
        padding: 22px 15px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    .header h2 {
        margin: 0;
        font-size: 27px;
    }

    .header p {
        margin: 8px 0 0;
        color: #dbeafe;
        font-size: 15px;
    }

    /* Form Container */
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 35px 15px;
    }

    .form-card {
        width: 100%;
        max-width: 550px;
        background: white;
        padding: 30px 35px;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(23, 37, 84, 0.12);
        border-top: 5px solid #2563eb;
    }

    .form-card h3 {
        text-align: center;
        color: #172554;
        margin-top: 0;
        margin-bottom: 25px;
        font-size: 24px;
    }

    form {
        text-align: left;
    }

    label {
        display: block;
        margin-bottom: 7px;
        font-weight: bold;
        color: #334155;
        font-size: 14px;
    }

    input[type="text"] {
        width: 100%;
        padding: 11px 12px;
        margin-bottom: 18px;
        border: 1px solid #cbd5e1;
        border-radius: 6px;
        font-size: 14px;
        outline: none;
        transition: border-color 0.2s, box-shadow 0.2s;
    }

    input[type="text"]:focus {
        border-color: #2563eb;
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        margin-top: 5px;
        background: #2563eb;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.2s;
    }

    input[type="submit"]:hover {
        background: #1d4ed8;
    }

    /* Footer */
    .footer {
        text-align: center;
        padding: 18px;
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

        .form-card {
            padding: 25px 20px;
        }

        .header h2 {
            font-size: 23px;
        }
    }
</style>
</head>

<body>

    <!-- Campus Connect Logo and Text -->
    <div class="logo-header">
        <img
            src="${pageContext.request.contextPath}/images/campus-connect-logo.png"
            alt="Campus Connect Logo"
            class="logo">

        <h1>Campus <span>Connect</span></h1>
    </div>

    <!-- Page Header -->
    <div class="header">
        <h2>Add Student</h2>
        <p>Your Campus, Your Community, Your Future</p>
    </div>

    <!-- Add Student Form -->
    <div class="container">
        <div class="form-card">

            <h3>Student Details</h3>

            <form action="${pageContext.request.contextPath}/cc/savestudent"
                method="post">

                <label for="studentusername">Username :</label>
                <input id="studentusername" name="studentusername"
                    type="text" placeholder="Enter Student UserName">

                <label for="studentpassword">Password :</label>
                <input id="studentpassword" name="studentpassword"
                    type="text" placeholder="Enter Student Password">

                <label for="studentname">Student Name :</label>
                <input id="studentname" name="studentname"
                    type="text" placeholder="Enter Student Full Name">

                <label for="studentage">Student Age :</label>
                <input id="studentage" name="studentage"
                    type="text" placeholder="Enter Student Age">

                <label for="studentemailid">Student Email Id :</label>
                <input id="studentemailid" name="studentemailid"
                    type="text" placeholder="Enter Student Email Id">

                <label for="studentmobilenum">Student Mobile Number :</label>
                <input id="studentmobilenum" name="studentmobilenum"
                    type="text" placeholder="Enter Student Mobile Number">

                <label for="studentdepartment">Student Department :</label>
                <input id="studentdepartment" name="studentdepartment"
                    type="text" placeholder="Enter Student Department">

                <label for="studentcity">Student city :</label>
                <input id="studentcity" name="studentcity"
                    type="text" placeholder="Enter Student City">

                <input type="submit" name="addstudent" value="Add Student">

            </form>
            
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2026 Campus Connect | All Rights Reserved
    </div>

</body>
</html>
