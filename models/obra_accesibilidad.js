module.exports = (sequelize, Sequelize) => {

    const obra_accesibilidad = sequelize.define("obra_accesibilidad", {
        : {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        : {
            type: Sequelize.STRING
        },
        : {
            type: Sequelize.STRING(200)
        },
        : {
            type: Sequelize.STRING
        },
    });
    return ;
};