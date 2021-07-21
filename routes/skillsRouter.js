const express = require('express');
const skillsRouter = express.Router();
const connection = require('../db');

skillsRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM skills')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });


   module.exports = skillsRouter;