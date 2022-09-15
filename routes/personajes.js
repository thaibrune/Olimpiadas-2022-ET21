var express = require('express');
var router = express.Router();
const db = require("../models");
const Personajes = db.personajes;

/* GET users listing. */

router.post('/',async function(req, res, next) {

  let personaje = req.body;

  let personajeCreado = await Personajes.create(personaje, {
    include: [{
      model: db.poderes
    }]
  });
  let resultados = await Personajes.findAll();
  res.send({
    status : true,
    response : resultados
  });
});

router.put('/:id',async function(req, res, next) {


  console.log(req.body);

  let personajeEncontrado = await Personajes.findOne({
    where : {
      id : req.params.id
    },
    include: {
      model: db.poderes
    }
  });
  if(!personajeEncontrado){
    res.send({
      status : false,
      response : {error : "NO SE ENCONTRO EL PERSONAJE"}
    });
    return;
  }

  personajeEncontrado.name = req.body.name;
  personajeEncontrado.icon = req.body.icon;

  for(let i = 0;i< personajeEncontrado.poderes.length ; i++){

    personajeEncontrado.poderes[i].name = req.body.poderes[i].name;
    personajeEncontrado.poderes[i].icon = req.body.poderes[i].icon;
    personajeEncontrado.poderes[i].damage = req.body.poderes[i].damage;

    await personajeEncontrado.poderes[i].save();

  }

  await personajeEncontrado.save();
  let personajes = await Personajes.findAll();
  res.send({
    status : true,
    response : personajes
  });

});

router.delete('/:id',async function(req, res, next) {
  let personajeEncontrado = await Personajes.findOne({
    where : {
      id : req.params.id
    },
    include: {
      model: db.poderes
    }
  });
  if(personajeEncontrado){

    personajeEncontrado.poderes.forEach(function(poder){
      poder.destroy();
    });

    await personajeEncontrado.destroy();
  }
  let personajes = await Personajes.findAll();
  res.send({
    status : true,
    response : personajes
  });
});

module.exports = router;
