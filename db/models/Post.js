module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        id_usuario: {
            type: DataTypes.INTEGER
        },
        url_imagen: {
            type: DataTypes.STRING

        },
        texto: {
            type: DataTypes.STRING
        },
        fecha_publicación: {
            type: DataTypes.DATE
        }
    }


    let config = {
        tableName: "posts",
        timestamps: false
    }

    let Post = sequelize.define("Post", cols, config);

    Post.associate = function (models){
    Post.belongsTo (models.Usuario,{
        as: "Usuario",
        foreignKey: "id_usuario"
    })
}
    return Post;
    
}