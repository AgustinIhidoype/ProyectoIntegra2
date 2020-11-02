module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        id_post: {
            type: DataTypes.INTEGER
        },
        id_usuario: {
            type: DataTypes.INTEGER
        },
        comentario: {
            type: DataTypes.STRING
        },
    }


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentario = sequelize.define("Comentario", cols, config);

    Comentario.associate = function (models){
        Comentario.belongsTo (models.Post,{
            as: "Post",
            foreignKey: "id_post"
        })
    }

    return Comentario;
}