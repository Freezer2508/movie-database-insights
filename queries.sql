# 🎬 Movie Database Insights

## 📌 Project Overview
This project is a **SQL-based movie database** that stores information about movies, genres, actors, directors, and ratings. It allows for **data analysis** using SQL queries to extract meaningful insights, such as top-rated movies, most common genres, and most popular actors.

## 📂 Repository Structure
```
📂 movie-database-insights/
├── 📄 schema.sql    # Creates the database tables
├── 📄 data.sql      # Inserts sample movie data
├── 📄 queries.sql   # Analytical SQL queries
└── 📄 README.md     # Project documentation (this file)
```

## 🚀 How to Set Up the Database

### **1️⃣ Install MySQL (if not installed)**
- If you haven't installed MySQL, download it from [MySQL Official Site](https://dev.mysql.com/downloads/).

### **2️⃣ Create the Database in phpMyAdmin**
1. Open **phpMyAdmin** ([http://localhost:8888/phpmyadmin](http://localhost:8888/phpmyadmin)).
2. Click **Databases** → Create a new database called **movie_db**.

### **3️⃣ Import the Tables (`schema.sql`)**
1. In phpMyAdmin, click **movie_db** (left sidebar).
2. Click **Import** → Select **`schema.sql`**.
3. Click **Go** to create the tables.

### **4️⃣ Insert Data (`data.sql`)**
1. In phpMyAdmin, click **Import**.
2. Select **`data.sql`** and click **Go**.

### **5️⃣ Run SQL Queries (`queries.sql`)**
1. Click **SQL** in phpMyAdmin.
2. Copy-paste queries from **`queries.sql`** and click **Go** to analyze the data.

## 📊 SQL Analysis & Insights
Here are some sample queries and what they do:

🔹 **Top 5 Highest-Rated Movies**
```sql
SELECT title, rating FROM Movies ORDER BY rating DESC LIMIT 5;
```

🔹 **Number of Movies Per Genre**
```sql
SELECT g.genre_name, COUNT(mg.movie_id) AS movie_count
FROM Genres g
JOIN Movie_Genres mg ON g.genre_id = mg.genre_id
GROUP BY g.genre_name
ORDER BY movie_count DESC;
```

🔹 **Most Popular Actors (Appearing in the Most Movies)**
```sql
SELECT a.actor_name, COUNT(ma.movie_id) AS movie_count
FROM Actors a
JOIN Movie_Actors ma ON a.actor_id = ma.actor_id
GROUP BY a.actor_name
ORDER BY movie_count DESC LIMIT 5;
```

## 📌 Future Improvements
✅ Add more detailed movie metadata (box office earnings, production companies).  
✅ Implement a **Python dashboard** to visualize insights from the database.  
✅ Use **stored procedures** and **triggers** to automate data updates.  

## 🤝 Contributing
Feel free to fork this repo and improve it! 🚀

## 📜 License
This project is open-source and free to use!
