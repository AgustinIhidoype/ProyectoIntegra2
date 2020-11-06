let db = require("../db/models/index");
let op = db.Sequelize.Op;

let homeController = {
    posteos: function (req, res) {
        db.Post.findAll({
            include: [
                {association: "Usuario"},
                {association: "Comentario"}
            ]
        })
        .then(function(posteos){
            res.render('home', {posteos: posteos})
        })
    },
    prueba: function(req, res) {
        db.Usuario.findAll()
        .then(function(posts){
            res.render('posts', {posts: posts})
        })
    },
    resultados: function(req,res) {
        let loBuscado = req.query.buscador

        db.Usuario.findAll(
            {
                where: [
                    {nombre_usuario: { [op.like]: '%' + loBuscado + '%'}}
                ],
                order: ['nombre_usuario']
            }
        )
        .then(function(usuarios){
            res.render('resultados', {usuarios: usuarios})
        })
    },
    delete: function(req,res){
        let idPost = req.body.idBorrar;

        db.Post.destroy({
            where: {
                id : idPost
            }
        })
        .then(function(){
            res.redirect ("/home")
        })
    },
}

module.exports = homeController