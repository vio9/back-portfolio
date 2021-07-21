const express = require('express');
const formationRouter = require('./formationRouter');
const router = express.Router();
const infosRouter = require('./infosRouter');
const socialsRouter = require('./socialsRouter')
const skillsRouter = require('./skillsRouter')
const experiencesRouter = require('./experiencesRouter');

const setupRoutes = (app) => {
    // ajouter ici les autres routers + créer un router par table
    app.use('/infos', infosRouter);
    app.use('/socials', socialsRouter);
    app.use('/formation', formationRouter);
    app.use('/skills', skillsRouter);
    app.use('/experiences', experiencesRouter);
}

module.exports = {
    setupRoutes,
};