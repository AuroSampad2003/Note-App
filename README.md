# 📝 Note App

A simple and user-friendly **Note Taking Application** built with **Java, JSP, Servlet, and MySQL**.  
This project allows users to create, view, update, and delete notes easily.

---

## 🌐 Live Demo
[Demo Link](#)

---

## 🛠️ Features
- User authentication (Login/Register)
- Create new notes
- Edit existing notes
- Delete notes
- Responsive and clean UI
- MySQL database integration

---

## 🚀 Tech Stack
- **Frontend:** HTML, CSS, JSP
- **Backend:** Java, Servlet
- **Database:** MySQL
- **Server:** Apache Tomcat

---

## ⚙️ Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/AuroSampad2003/Note-App.git

2. Import the project into your IDE (Eclipse/IntelliJ).
3. Configure Apache Tomcat server in your IDE.
4. Create a MySQL database and run the following SQL script:
   ```sql
    CREATE DATABASE note_app;

    USE note_app;
    
    CREATE TABLE users (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL
    );
    
    CREATE TABLE notes (
        id INT PRIMARY KEY AUTO_INCREMENT,
        user_id INT NOT NULL,
        title VARCHAR(200),
        content TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
    );

5. Update your DB configuration in the project (DBConnection.java or similar file):
   ```java
   String url = "jdbc:mysql://localhost:3306/note_app";
   String username = "root";
   String password = "your_password";

6. Deploy the project to Tomcat and run:
   ```arduino
   http://localhost:8080/Note-App

---

## 📌 Future Enhancements
- Search notes
- Add categories/tags
- Share notes feature
- Dark mode
