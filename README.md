# Spectre User Management System

A Java-based web application that handles user registration, login, profile management, and avatar uploads. Built using Servlets, JSP, JDBC, and MySQL.

## 💡 Features

- User Registration with avatar upload
- Login/Logout functionality
- Session management
- View and update user profiles
- Delete user accounts
- Uses JDBC for database interaction

## 🛠️ Technologies

- Java (Servlets & JSP)
- JDBC
- MySQL
- Apache Tomcat (for deployment)
- HTML/CSS (JSP-based UI)

## 🚀 Getting Started

### Prerequisites

- JDK 11 or higher
- Apache Tomcat 9+
- MySQL
- Eclipse IDE (optional)

### Database Setup

1. Create a MySQL database named `spectre`.
2. Create the required table `userlogin`:

```sql
CREATE TABLE userlogin (
  uid INT PRIMARY KEY AUTO_INCREMENT,
  fullname VARCHAR(100),
  age INT,
  gender VARCHAR(10),
  username VARCHAR(100),
  password VARCHAR(100),
  avatar BLOB
);
```

3. Update the database credentials in `UserDao.java`:

```java
public static final String USERNAME = "your_username";
public static final String PASSWORD = "your_password";
```

### Running the Project

1. Import the project into Eclipse as a Dynamic Web Project.
2. Place the project in your Tomcat `webapps` folder or deploy via Eclipse.
3. Start the Tomcat server.
4. Access the app via `http://localhost:8080/YourProjectName`.

## ⚠️ Security Notice

Make sure to externalize credentials (use `.properties` files) and **never commit passwords** to source control.

## 📁 Folder Structure

- `com.spectre.dto` – Data Transfer Object
- `com.spectre.model` – DAO classes for DB interaction
- `web.spectre.controller` – Servlet controllers
