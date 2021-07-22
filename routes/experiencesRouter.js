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


   experiencesRouter.get("/:id", (req, res) => {
    connection.query(
      "SELECT * from experiences WHERE id=?",
      [req.params.id],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error retrieving data");
        } else {
          if (results.length) res.json(results[0]);
          else res.status(404).send("experience not found");
        }
      }
    );
  });



   experiencesRouter.post('/', (req, res) => {
    const {title, entreprise, subtitle, description, period, image} = req.body;
    connection.query(
      'INSERT INTO experiences(title, entreprise, subtitle, description, period, image) VALUES (?,?,?,?,?,?)',
      [title, entreprise, subtitle, description, period, image],
      (err, result) => {
        if (err) {
          console.error(err);
          res.status(500).send('Error saving the profesionnal experience ');
        } else {
          const id = result.insertId;
          const createdExperience = { title, entreprise, subtitle, description, period, image};
          res.status(201).json(createdExperience);
        }
      }
    );
  });


  experiencesRouter.put('/:id', (req, res) => {
    const expId = req.params.id;
    const expToUpdate = req.body;
    connection.query(
      'UPDATE experiences SET ? WHERE id =?',
      [expToUpdate, expId ],
      (err) => {
        if (err) {
          console.log(err);
          res.status(500).send('Error updating experience');
        } else {
          res.status(200).send('experience updated successfully 🎉');
          console.log(expId)
        }
      }
    );
  });





  experiencesRouter.delete("/:id", (req, res) => {
    const experiencesId = req.params.id;
    connection.query(
      "DELETE FROM experiences WHERE id = ?",
      [experiencesId],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error deleting an experience");
        } else {
          res.status(200).send("experience deleted");
        }
      }
    );
  });

   module.exports = experiencesRouter;