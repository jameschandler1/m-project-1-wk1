const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
const port = 3001;

// Middleware
app.use(cors());
app.use(express.json());

// MySQL connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root", // Change to your MySQL username
  password: "", // Change to your MySQL password
  database: "hello_world_db",
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
    return;
  }
  console.log("Connected to MySQL database");
});

// API endpoint to get hello message
app.get("/api/hello", (req, res) => {
  const query = "SELECT message FROM messages WHERE id = 1";
  db.query(query, (err, results) => {
    if (err) {
      console.error("Error querying database:", err);
      res.status(500).json({ error: "Database error" });
      return;
    }
    if (results.length > 0) {
      res.json({ message: results[0].message });
    } else {
      res.json({ message: "Hello, World!" }); // Fallback
    }
  });
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
