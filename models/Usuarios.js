module.exports = (sequelize, Sequelize) => {

    const usuarios = sequelize.define("usuarios", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        usuario: {
            type: Sequelize.STRING,
        },
        password: {
            type: Sequelize.STRING
        },

    });
    return usuarios;
};