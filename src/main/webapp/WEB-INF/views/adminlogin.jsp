<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login - Campus Connect</title>

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

    /* Top navigation */
    .navbar {
        display: flex;
        align-items: center;
        gap: 15px;
        background-color: white;
        padding: 12px 35px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .logo {
        width: 60px;
        height: 60px;
        object-fit: contain;
    }

    .navbar h1 {
        margin: 0;
        font-size: 27px;
        color: #172554;
    }

    .navbar h1 span {
        color: #2563eb;
    }

    /* Welcome banner */
    .welcome-banner {
        background-color: #172554;
        color: white;
        text-align: center;
        padding: 22px 15px;
    }

    .welcome-banner h2 {
        margin: 0 0 10px;
        font-size: 25px;
    }

    .welcome-banner p {
        margin: 0;
        color: #cbd5e1;
        font-size: 15px;
        line-height: 1.6;
    }

    /* Login section */
    .login-container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 45px 20px;
    }

    .login-card {
        width: 100%;
        max-width: 420px;
        background-color: white;
        padding: 35px;
        border-radius: 14px;
        box-shadow: 0 8px 25px rgba(15, 23, 42, 0.10);
    }

    .login-icon {
        width: 65px;
        height: 65px;
        margin: 0 auto 15px;
        border-radius: 50%;
        background-color: #dbeafe;
        color: #1d4ed8;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 30px;
    }

    .login-card h2 {
        text-align: center;
        color: #172554;
        margin: 0 0 10px;
        font-size: 27px;
    }

    .subtitle {
        text-align: center;
        color: #64748b;
        font-size: 14px;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        font-size: 14px;
        color: #334155;
    }

    .form-group input {
        width: 100%;
        padding: 13px 14px;
        border: 1px solid #cbd5e1;
        border-radius: 7px;
        font-size: 15px;
        outline: none;
        transition: border-color 0.2s, box-shadow 0.2s;
    }

    .form-group input:focus {
        border-color: #2563eb;
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
    }

    .login-button {
        width: 100%;
        padding: 14px;
        border: none;
        border-radius: 7px;
        background-color: #2563eb;
        color: white;
        font-size: 17px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.2s;
    }

    .login-button:hover {
        background-color: #1d4ed8;
    }

    .login-button:focus-visible {
        outline: 3px solid #93c5fd;
        outline-offset: 3px;
    }

    .security-note {
        text-align: center;
        color: #64748b;
        font-size: 12px;
        margin-top: 22px;
    }

    /* Footer */
    .footer {
        text-align: center;
        padding: 18px;
        color: #64748b;
        font-size: 13px;
    }

    @media (max-width: 600px) {
        .navbar {
            padding: 12px 18px;
        }

        .logo {
            width: 48px;
            height: 48px;
        }

        .navbar h1 {
            font-size: 22px;
        }

        .welcome-banner h2 {
            font-size: 21px;
        }

        .login-card {
            padding: 28px 22px;
        }
    }
</style>
</head>

<body>

    <!-- Campus Connect Header -->
    <div class="navbar">

        <img
            src="${pageContext.request.contextPath}/images/campus-connect-logo.png"
            alt="Campus Connect Logo"
            class="logo">

        <h1>Campus <span>Connect</span></h1>

    </div>

    <!-- Welcome Message -->
    <div class="welcome-banner">

        <h2>Welcome to Campus Connect</h2>

        <p>
            Empowering Every Student to Learn, Grow, and Succeed!
        </p>

    </div>

    <!-- Admin Login Form -->
    <div class="login-container">

        <div class="login-card">

            <div class="login-icon">&#128274;</div>

            <h2>Admin Login</h2>

            <p class="subtitle">
                Sign in to access your administrator account.
            </p>

            <form action="${pageContext.request.contextPath}/cc/aloginsucess"
                  method="get">

                <div class="form-group">

                    <label for="adminusername">Username</label>

                    <input
                        id="adminusername"
                        name="adminusername"
                        type="text"
                        placeholder="Enter User Name"
                        required>

                </div>

                <div class="form-group">

                    <label for="adminpassword">Password</label>

                    <input
                        id="adminpassword"
                        name="adminpassword"
                        type="password"
                        placeholder="Enter Password"
                        required>

                </div>

                <input
                    name="adminLogin"
                    type="submit"
                    value="Login"
                    class="login-button">

            </form>

            <p class="security-note">
                Authorized administrators only
            </p>

        </div>

    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2026 Campus Connect. All rights reserved.
    </div>

</body>
</html>