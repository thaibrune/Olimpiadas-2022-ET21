module.exports = (sequelize, Sequelize) => {

    const personajes = sequelize.define("personaje", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: Sequelize.STRING,
        },
        icon: {
            type: Sequelize.STRING
        },
        description: {
            type : Sequelize.STRING
        }
    });
    return personajes;
};