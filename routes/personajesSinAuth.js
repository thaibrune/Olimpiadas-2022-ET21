var express = require('express');
var router = express.Router();
const db = require("../models");
const Personajes = db.personajes;

/* GET users listing. */
router.get('/',async function(req, res, next) {
  let resultados = await Personajes.findAll({
    include: {
      model: db.poderes
    }
  });
  res.send({
    status : true,
    response : resultados
  });
});


router.get('/:id',async function(req, res, next) {

  let personajeEncontrado = await Personajes.findOne({
    where : {
      id : req.params.id
    },
    include: {
      model: db.poderes
    }
  });
  res.send({
    status : true,
    response : personajeEncontrado
  });
  
});

module.exports = router;
