module.exports = (sequelize, Sequelize) => {

    const usuarios = sequelize.define("usuarios", {
        id_usuario: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nombre: {
            type: Sequelize.STRING,
        },
        password: {
            type: Sequelize.STRING
        }
    });
    return usuarios;
};