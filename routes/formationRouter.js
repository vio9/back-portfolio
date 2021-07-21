const express = require('express');
const formationRouter = express.Router();
const connection = require('../db');

formationRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM formation')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });


   module.exports = formationRouter;