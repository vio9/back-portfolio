const express = require('express');
const projectsRouter = express.Router();
const connection = require('../db');

projectsRouter.get('/', (req, res) => {
    connection.promise().query('SELECT * FROM projects')
      .then(([results]) => {
        res.json(results);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send('Error retrieving infos from db.');
      });
   });


   projectsRouter.get("/:id", (req, res) => {
    connection.query(
      "SELECT * from projects WHERE id=?",
      [req.params.id],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error retrieving project");
        } else {
          if (results.length) res.json(results[0]);
          else res.status(404).send("project not found");
        }
      }
    );
  });




  projectsRouter.post('/', (req, res) => {
    const {title, image, link, description, period} = req.body;
    connection.query(
      'INSERT INTO projects(title, image, link, description, period) VALUES (?,?,?,?,?)',
      [title, image, link, description, period],
      (err, result) => {
        if (err) {
          console.error(err);
          res.status(500).send('Error saving the project');
        } else {
          const id = result.insertId;
          const createdProject = {title, image, link, description, period};
          res.status(201).json(createdProject);
        }
      }
    );
  });



  projectsRouter.delete("/", (req, res) => {
    const projectlId = req.params.id;
    connection.query(
      "DELETE FROM socials WHERE id = ?",
      [projectId],
      (err, results) => {
        if (err) {
          console.log(err);
          res.status(500).send("error deleting project");
        } else {
          res.status(200).send("project deleted");
        }
      }
    );
  });



   module.exports = projectsRouter;