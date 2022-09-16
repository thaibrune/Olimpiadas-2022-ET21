var express = require('express');
var router = express.Router();
var config = require("../config/config");
var jwt = require("jsonwebtoken");

const db = require("../models");

const usuarios = db.usuarios;


module.exports = router;
