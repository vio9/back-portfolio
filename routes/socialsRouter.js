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


   socialsRouter.get("/:id", (req, res) => {
    connection.query(
      "SELECT * from socials WHERE id=?",
      [req.params.id],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error retrieving data");
        } else {
          if (results.length) res.json(results[0]);
          else res.status(404).send("social not found");
        }
      }
    );
  });




   socialsRouter.post('/', (req, res) => {
    const {name, link, image} = req.body;
    connection.query(
      'INSERT INTO socials(name, link, image) VALUES (?,?,?)',
      [name, link, image],
      (err, result) => {
        if (err) {
          console.error(err);
          res.status(500).send('Error saving the social network');
        } else {
          const id = result.insertId;
          const createdSocial = {name, link, image};
          res.status(201).json(createdSocial);
        }
      }
    );
  });



  socialsRouter.delete("/:id", (req, res) => {
    const socialsId = req.params.id;
    connection.query(
      "DELETE FROM socials WHERE id = ?",
      [socialsId],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error deleting a social network");
        } else {
          res.status(200).send("social network deleted");
        }
      }
    );
  });



   module.exports = socialsRouter;