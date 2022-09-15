module.exports = (sequelize, Sequelize) => {

    const poderes = sequelize.define("poderes", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: Sequelize.STRING,
        },
        damage: {
            type: Sequelize.DOUBLE
        },
        id_personaje: {
            type: Sequelize.INTEGER
        },
        icon: {
            type: Sequelize.STRING,
        },
    });
    return poderes;
};