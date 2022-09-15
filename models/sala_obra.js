module.exports = (sequelize, Sequelize) => {

    const  = sequelize.define("", {
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