let db = require("../db/models/index");
let op = db.Sequelize.Op;

let homeController = {
    index: function (req, res) {
        res.render("home", )
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
    }
}

module.exports = homeController