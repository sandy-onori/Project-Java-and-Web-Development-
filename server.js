const express = require('express'); // Importing the express module
const mysql = require('mysql2'); // Importing the mysql2 module
const bodyParser = require('body-parser'); // Importing the body-parser module
const crypto = require('crypto'); // Importing the crypto module for hashing passwords
const cors = require('cors'); // Importing the cors module to handle Cross-Origin Resource Sharing

const app = express(); // Creating an instance of the express application
const port = 3000; // Setting the port for the server

app.use(cors()); // Enabling CORS for the server
app.use(bodyParser.json()); // Enabling JSON body parsing for the server

const db = mysql.createConnection({
  host: '127.0.0.1', // Database host
  user: 'root', // Database username
  password: '1234', // Database password
  database: 'airbnb_db', // Database name
  port: 3306 // Database port
}); // Creating a connection to the MySQL database

db.connect(err => {
  if (err) {
    throw err; // Throw an error if the connection fails
  }
}); // Connecting to the database

const hashPassword = (password) => {
  return crypto.createHash('sha256').update(password).digest('hex'); // Hashing a password using SHA-256
}; // Function to hash passwords

app.post('/login', (req, res) => {
  const { email, password } = req.body; // Extracting email and password from the request body
  const hashedPassword = hashPassword(password); // Hashing the provided password

  db.query('SELECT password FROM employee WHERE email = ?', [email], (err, results) => {
    if (err) {
      return res.status(500).send('Server error'); // Sending a server error response if there's an error
    }
    if (results.length === 0) {
      return res.status(401).send('Invalid email or password'); // Sending an error response if the email is not found
    }

    const storedHashedPassword = results[0].password; // Getting the stored hashed password
    if (hashedPassword === storedHashedPassword) {
      return res.status(200).send('Login successful'); // Sending a success response if passwords match
    } else {
      return res.status(401).send('Invalid email or password'); // Sending an error response if passwords don't match
    }
  });
}); // Endpoint for handling login requests

app.get('/query', (req, res) => {
  const queryName = req.query.name; // Extracting the query name from the request query parameters
  let query;

  switch (queryName) {
    case 'query1':
      query = `SELECT last_name AS 'Last name', first_name AS 'First name', ROUND(balance, 2) AS 'Balance in €', email
               FROM account
               ORDER BY balance DESC
               LIMIT 5;`; // Query to get the top 5 accounts by balance
      break;
    case 'query2':
      query = `SELECT id, email
               FROM account
               WHERE hosting_start_date IS NOT NULL;`; // Query to get accounts that are also hosts
      break;
    case 'query3':
      query = `SELECT id, email
               FROM account
               WHERE hosting_start_date IS NULL;`; // Query to get accounts that are only guests
      break;
    case 'query4':
      query = `SELECT property_name AS 'Name', current_nightly_price AS 'Price', current_cleaning_fee AS 'Cleaning fee'
               FROM property
               ORDER BY current_nightly_price DESC
               LIMIT 5;`; // Query to get the top 5 most expensive properties
      break;
    case 'query5':
      query = `SELECT property_name AS 'Name', current_nightly_price AS 'Price', current_cleaning_fee AS 'Cleaning fee'
               FROM property
               ORDER BY current_nightly_price ASC
               LIMIT 5;`; // Query to get the top 5 cheapest properties
      break;
    case 'query6':
      query = `SELECT property.id, property_name AS 'Property name', email AS 'Host email'
               FROM property
               INNER JOIN account
               ON account.id = property.account_id;`; // Query to get property and host details
      break;
    case 'query7':
      query = `SELECT id, amount, transaction_date
               FROM payment
               ORDER BY amount DESC
               LIMIT 5;`; // Query to get the top 5 largest payments
      break;
    case 'query8':
      query = `SELECT amount, payment_method_name 
               FROM payment
               INNER JOIN payment_method
               ON payment_method.id = payment.payment_method_id
               WHERE amount > 1000
               ORDER BY amount DESC;`; // Query to get payments above 1000€
      break;
    case 'query9':
      query = `SELECT amount, account.id AS 'Account id', last_name AS 'Last name'
               FROM account
               INNER JOIN payment
               ON account.id = payment.account_id
               WHERE amount < 0;`; // Query to get all withdrawals
      break;
    default:
      return res.status(400).send('Unknown query name'); // Sending an error response if the query name is unknown
  }

  db.query(query, (err, results) => {
    if (err) {
      return res.status(500).send(err); // Sending an error response if there's an error executing the query
    }
    res.json(results); // Sending the query results as a JSON response
  });
}); // Endpoint for handling various queries

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`); // Starting the server and logging the running port
}); // Starting the server
