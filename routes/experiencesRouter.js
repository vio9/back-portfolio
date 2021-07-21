const express = require('express');
const experiencesRouter = express.Router();
const connection = require('../db');

experiencesRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM experiences')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });

   experiencesRouter.post('/', (req, res) => {
  
    const {title, entreprise, subtitle, description, period} = req.body;
    connection.query(
      'INSERT INTO experiences(title, entreprise, subtitle, description, period) VALUES (?,?,?,?,?)',
      [title, entreprise, subtitle, description, period],
      (err, result) => {
        if (err) {
          console.error(err);
          res.status(500).send('Error saving the profesionnal experience ');
        } else {
          const id = result.insertId;
          const createdExperience = { title, entreprise, subtitle, description, period};
          res.status(201).json(createdExperience);
        }
      }
    );
  });


   module.exports = experiencesRouter;