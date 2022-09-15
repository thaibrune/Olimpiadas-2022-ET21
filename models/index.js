const Sequelize = require("sequelize");
const dbConfig = require("../config/config.js");

const sequelize = new Sequelize(
    dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD,
    {
        host: dbConfig.HOST,
        dialect: dbConfig.dialect
    });

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.personajes = require("./Personajes")(sequelize, Sequelize);
db.poderes = require("./Poderes")(sequelize, Sequelize);
db.usuarios = require("./Usuarios")(sequelize, Sequelize);

db.personajes.hasMany(db.poderes,{
    foreignKey : 'id_personaje',
});
db.poderes.belongsTo(db.personajes,{
    foreignKey : 'id',
});



module.exports = db;
