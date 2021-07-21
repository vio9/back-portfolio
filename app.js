require('dotenv').config();
const express = require('express');
const connection = require('./db');
cors = require('cors'); 
const { setupRoutes } = require('./routes/setup');

const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:false}));

setupRoutes(app);

connection.connect((err) => {
  if (err) {
    console.log('Error connecting to database! : ', err);
  } else {
    console.log('Cool, your are connected to database');
  }
});

module.exports = app;