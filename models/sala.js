module.exports = (sequelize, Sequelize) => {

    const sala = sequelize.define("sala", {
        id_sala: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        descripcion: {
            type: Sequelize.STRING
        },
        url: {
            type: Sequelize.STRING(200)
        }
    });
    return sala;
};