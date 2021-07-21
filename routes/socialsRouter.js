const express = require('express');
const socialsRouter = express.Router();
const connection = require('../db');

socialsRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM socials')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });


   module.exports = socialsRouter;