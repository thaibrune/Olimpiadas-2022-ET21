var express = require('express');
var router = express.Router();
var config = require("./../config/config");
var jwt = require("jsonwebtoken");

const db = require("../models");
const usuarios = db.usuarios;
/* GET home page. */
router.post('/',async  function(req, res, next) {


  let usuarioBody = req.body;
  let usuario = await usuarios.findOne({
    where : usuarioBody
  });

  if ( usuario){
    let token = jwt.sign({
      usuario: 'JuanElMasCapo',
      nombre : "juan"
    }, config.key);
    res.send({token : token});
    return;
  }else{
    res.send({
      status : false,
      response : "Esta mal la contrasena"
    });

  }




});

module.exports = router;
