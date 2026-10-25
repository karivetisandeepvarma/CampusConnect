# 🎓 Campus Connect – Student Management System

Campus Connect is a Java-based web application developed to simplify college administration and student information management. It allows administrators to manage student records, administrator accounts, and examination results through a user-friendly web interface.

The application is built using Spring MVC, JSP, Hibernate ORM, and MySQL, following the Model–View–Controller (MVC) architecture.

## ✨ Features

### 🔐 Admin Management
- Admin login functionality.
- Add new administrator accounts.
- Admin dashboard for accessing management features.

### 👨‍🎓 Student Management
- Add new students.
- View all student records.
- Update student details.
- Delete student records.
- Manage student usernames, passwords, names, ages, email addresses, mobile numbers, departments, and cities.

### 📚 Marks Management
- Upload student examination results.
- Enter student ID and subject details.
- Store marks obtained and maximum marks.
- Record semester information.

### 🎨 User Interface
- Clean and user-friendly interface.
- Campus Connect branding and logo.
- Responsive forms with consistent styling.
- Dedicated pages for student management and result entry.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Backend programming |
| Spring MVC | Web application development |
| JSP | Dynamic web pages |
| Hibernate ORM | Database operations |
| MySQL | Database management |
| Maven | Dependency management |
| Apache Tomcat 11 | Application server |
| HTML5 | Web page structure |
| CSS3 | Styling and layout |
| Eclipse IDE | Development environment |

## 🏗️ Application Architecture

The project follows the MVC architecture:

- **Model:** Java classes representing application data.
- **View:** JSP pages for displaying forms and information.
- **Controller:** Spring MVC controllers for handling requests.
- **DAO:** Data Access Objects for database operations.
- **Database:** MySQL for storing application records.

**Request flow:**

`Browser → Spring MVC Controller → DAO/Hibernate → MySQL`

The controller returns the appropriate JSP view to display the response.

## 📂 Project Structure

```text
CampusConnect/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/cc/
│       │       ├── config/
│       │       ├── controller/
│       │       ├── model/
│       │       ├── service/
│       │       └── dao/
│       ├── resources/
│       └── webapp/
│           ├── images/
│           │   └── campus-connect-logo.png
│           └── WEB-INF/
│               └── views/
├── pom.xml
└── README.md
```

*Note: The structure above is representative. Your actual package and JSP filenames may differ.*

## ⚙️ Prerequisites

Before running the project, install:

- JDK compatible with the configured dependencies
- Eclipse IDE for Enterprise Java and Web Developers
- Apache Tomcat 11
- MySQL Server
- Maven

## 📦 Main Dependencies

The project uses the following dependencies:

- Spring Context
- Spring ORM
- Spring Web MVC
- Hibernate Core
- MySQL Connector/J

Refer to `pom.xml` for the exact dependency versions and additional dependencies.

## 🗄️ Database Configuration

Create a MySQL database for the application:

```sql
CREATE DATABASE campusconnect;
```

Configure the database URL, username, and password in your application's database configuration.

Example JDBC URL:

```text
jdbc:mysql://localhost:3306/campusconnect
```

Ensure Hibernate is configured correctly and the required tables are created. Use your own database credentials and do not publish passwords in your repository.

## 🚀 How to Run

1. Clone or download this repository.
2. Import the project into Eclipse as an existing Maven project.
3. Update the Maven project to download its dependencies.
4. Create the MySQL database and configure the connection.
5. Verify the Spring MVC and Hibernate configurations.
6. Configure Apache Tomcat 11 in Eclipse.
7. Deploy the project to Tomcat and start the server.
8. Open the application in your browser.

Example local URL:

```text
http://localhost:8080/CampusConnect/
```

The marks upload page uses the following URL in the local setup:

```text
http://localhost:8080/CampusConnect/cc/uploadMarks
```

## 🖼️ Screenshots

Screenshots of the application will be added here to demonstrate its interface and features.

## 🎯 Learning Outcomes

This project provided practical experience with:

- Building web applications using Spring MVC.
- Creating dynamic JSP pages.
- Integrating Hibernate ORM with MySQL.
- Implementing CRUD operations.
- Organizing application code using MVC and DAO patterns.
- Managing Maven dependencies.
- Deploying a Java web application on Apache Tomcat.
- Designing forms for student registration, updates, and examination results.

## 🔮 Future Enhancements

- Student login and a personalized student dashboard.
- Role-based access control.
- Display semester-wise student results.
- Automatic percentage and grade calculation.
- Improved input validation and error handling.
- Secure password hashing.
- Student search and pagination.
- Downloadable academic reports.

## 👨‍💻 Author

**Sandeep Varma Kariveti**

GitHub: [karivetisandeepvarma](https://github.com/karivetisandeepvarma)

## 📄 License

Developed for educational and portfolio purposes. An open-source license can be added if the project is distributed for reuse.
