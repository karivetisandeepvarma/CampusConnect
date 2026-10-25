<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CampusConnect.com</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #eef2ff, #f8fafc, #e0ecff);
            color: #172554;
            min-height: 100vh;
        }

        header {
            background: linear-gradient(135deg, #172554, #2563eb);
            color: white;
            text-align: center;
            padding: 25px 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        header h1 {
            margin: 0;
            font-size: 36px;
            letter-spacing: 1px;
        }

        header p {
            margin: 10px 0 0;
            color: #dbeafe;
            font-size: 16px;
        }

        /* Added Campus Connect Logo Section */
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
        }

        .announcement {
            background: white;
            color: #dc2626;
            padding: 12px;
            font-weight: bold;
            border-bottom: 1px solid #dbeafe;
        }

        .welcome {
            text-align: center;
            padding: 35px 15px 15px;
        }

        .welcome h2 {
            font-size: 34px;
            margin: 0 0 18px;
            color: #172554;
        }

        .welcome p {
            color: #64748b;
            font-size: 18px;
            line-height: 1.8;
            margin: 0;
        }

        .login-container {
            display: flex;
            justify-content: center;
            align-items: stretch;
            flex-wrap: wrap;
            gap: 35px;
            padding: 45px 20px 55px;
        }

        .login-card {
            width: 340px;
            padding: 35px 25px;
            background: white;
            text-align: center;
            border: 1px solid #dbeafe;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(23, 37, 84, 0.10);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .login-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 16px 35px rgba(37, 99, 235, 0.18);
        }

        .icon-circle {
            width: 85px;
            height: 85px;
            margin: 0 auto 22px;
            border-radius: 50%;
            background: linear-gradient(135deg, #dbeafe, #bfdbfe);
            color: #1d4ed8;
            border: 2px solid #93c5fd;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 38px;
            font-weight: bold;
        }

        label {
            display: block;
            font-size: 27px;
            font-weight: bold;
            color: #172554;
            margin-bottom: 28px;
        }

        input[type="submit"] {
            background: linear-gradient(135deg, #2563eb, #1d4ed8);
            color: white;
            font-size: 17px;
            font-weight: bold;
            padding: 13px 42px;
            border: none;
            border-radius: 9px;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }

        input[type="submit"]:hover {
            background: #172554;
            transform: scale(1.05);
        }

        footer {
            background: #172554;
            color: #cbd5e1;
            text-align: center;
            padding: 18px;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            header h1 {
                font-size: 29px;
            }

            .welcome h2 {
                font-size: 27px;
            }

            .welcome p {
                font-size: 16px;
            }

            .login-card {
                width: 100%;
                max-width: 340px;
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

    <header>
        <h1>Campus Connect</h1>
        <p>Your Campus, Your Community, Your Future</p>
    </header>

    <div class="announcement">
        <marquee>
            Welcome to Campus Connect - Empowering Every Student to Learn, Grow, and Succeed!
        </marquee>
    </div>

    <section class="welcome">
        <h2>Welcome to Campus Connect!</h2>

        <p>
            A single platform to connect students and administrators
            <br>
            and make campus management easier.
        </p>
    </section>

    <div class="login-container">

        <div class="login-card">

           <div class="icon-circle">&#128100;</div>

            <form action="${pageContext.request.contextPath}/cc/alogin">
                <label for="adminLogin">Admin Login</label>

                <input id="adminLogin"
                       name="adminLogin"
                       type="submit"
                       value="Login">
            </form>

        </div>

        <div class="login-card">

            <div class="icon-circle">&#127891;</div>

            <form action="${pageContext.request.contextPath}/cc/aloginsuccess">
                <label for="studentLogin">Student Login</label>

                <input id="studentLogin"
                       name="studentLogin"
                       type="submit"
                       value="Login">
            </form>

        </div>

    </div>

    <footer>
        &copy; 2026 Campus Connect. All rights reserved.
    </footer>

</body>
</html>