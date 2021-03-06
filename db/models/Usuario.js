module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        nombre_usuario: {
            type: DataTypes.STRING

        },
        fecha_registracion: {
            type: DataTypes.DATE

        },
        email: {
            type: DataTypes.STRING

        },
        constrasenia: {
            type: DataTypes.STRING

        },
        fecha_nacimiento: {
            type: DataTypes.DATE
        },
        preguntaElegida: {
            type: DataTypes.INTEGER
        },
        preguntaRespuesta: {
            type: DataTypes.STRING
        },
        fotoPerfil: {
            type: DataTypes.STRING
        }

    }


    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuario = sequelize.define("Usuario", cols, config);

    Usuario.associate = function (models){
        Usuario.hasMany (models.Post,{
            as: "Post",
            foreignKey: "id_usuario"
        })
        Usuario.hasMany (models.Comentario,{
            as: 'Comentario',
            foreignKey: 'id_usuario'
        })
    }
    return Usuario;
}