"use strict";

const express = require('express');
const config = require("../config/projekt.json");
const mysql = require("promise-mysql");
const projekt = require("../src/projekt.js");
const router  = express.Router();

router.get('/', async (req, res) => {
    let data = {
        title: "Welcome"
    };

    res.render("proj/index", data);
});

router.get('/kommuner', async (req, res) => {
    let data = {
        title: "Alla kommuner"
    };

    const db = await mysql.createConnection(config);

    data.res = await projekt.showKommuner(db);

    console.log(data.res);

    res.render("proj/kommuner", data);
});

module.exports = router;
