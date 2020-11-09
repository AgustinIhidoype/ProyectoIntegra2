let db = require("../db/models/index");
const { Sequelize } = require("../db/models/index");
let op = db.Sequelize.Op;

let homeController = {
    posteos: function (req, res) {
        db.Post.findAll(
        {
            include: [
                {all: true, nested: true}
            ],
            order: [
                ['fecha_publicación', 'DESC']
            ]
        },
        )
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
                where:{[Sequelize.Op.or]: [
                    {email: { [op.like]: '%' + loBuscado + '%'}},
                    {nombre_usuario: { [op.like]: '%' + loBuscado + '%'}},
                ]},
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
    buscarpost: function(req,res){
        res.render("buscadorPosteo")
    },
    resultadosPost: function(req,res){
        let posteoBuscado= req.query.buscadorPost
        db.Post.findAll(
            {
                where: {
                    texto: {[op.like] : "%" + posteoBuscado + "%" }
                },
                include: [
                    {association: "Usuario"}
                ]
            }
        )
        .then(function(posteosBuscados)
        {
            res.render ("resultadosPosteo", {posteosBuscados: posteosBuscados})
        })
    }
}

module.exports = homeController