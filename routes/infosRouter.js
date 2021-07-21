const express = require('express');
const infosRouter = express.Router();
const connection = require('../db');

infosRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM basic_infos')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });


   module.exports = infosRouter;