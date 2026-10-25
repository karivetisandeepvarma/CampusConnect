
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Results</title>

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
    text-align: center;
    padding: 30px 20px;
}

.page-heading h2 {
    font-size: 30px;
    margin-bottom: 8px;
}

.page-heading p {
    font-size: 15px;
    color: #dbeafe;
}

/* Form Card */
.form-container {
    width: 90%;
    max-width: 650px;
    margin: 35px auto;
    padding: 35px 40px;
    background: white;
    border-radius: 14px;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.08);
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    color: #334155;
    font-size: 14px;
    font-weight: 600;
}

.form-group input {
    width: 100%;
    padding: 12px 13px;
    border: 1px solid #cbd5e1;
    border-radius: 7px;
    outline: none;
    font-size: 14px;
    color: #1e293b;
    background: white;
    transition: border-color 0.2s, box-shadow 0.2s;
}

.form-group input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}

/* Submit Button */
.submit-btn {
    width: 100%;
    margin-top: 8px;
    padding: 13px;
    background: #172554;
    color: white;
    border: none;
    border-radius: 7px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: background 0.2s, transform 0.2s;
}

.submit-btn:hover {
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

    .page-heading h2 {
        font-size: 25px;
    }

    .form-container {
        width: 94%;
        padding: 25px 20px;
        margin: 25px auto;
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
        <h2>Upload Results</h2>
        <p>Enter student subject details and examination marks</p>
    </div>

    <div class="form-container">

        <form action="${pageContext.request.contextPath}/cc/saveMarks"
              method="post">

            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="number" id="studentId" name="studentId" required>
            </div>

            <div class="form-group">
                <label for="subjectName">Subject Name:</label>
                <input type="text" id="subjectName" name="subjectName" required>
            </div>

            <div class="form-group">
                <label for="marksObtained">Marks Obtained:</label>
                <input type="number" id="marksObtained"
                       name="marksObtained" required>
            </div>

            <div class="form-group">
                <label for="maxMarks">Maximum Marks:</label>
                <input type="number" id="maxMarks" name="maxMarks" required>
            </div>

            <div class="form-group">
                <label for="semester">Semester:</label>
                <input type="number" id="semester" name="semester" required>
            </div>

            <div class="form-group">
                <label for="subjectId">Subject ID:</label>
                <input type="number" id="subjectId" name="subjectId" required>
            </div>

            <input class="submit-btn" type="submit" value="Upload Results">

        </form>

    </div>

    <footer>
        © Campus Connect | Student Management System
    </footer>

</body>
</html>
