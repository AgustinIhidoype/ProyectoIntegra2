let db = require("../db/models/index");
let op = db.Sequelize.Op;

let miPerfilController = {
    perfil1: function (req, res) {
        //let idMio = req.session.usuarioLogueado.id//

        db.Post.findAll({
        include: [
            {association: "Usuario"}
        ]
        })

        .then(function(posteosUsuario){
            res.render("miPerfil", {posteosUsuario: posteosUsuario})
        })
    }
}
    
    module.exports= miPerfilController