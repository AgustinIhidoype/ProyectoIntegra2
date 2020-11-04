let db = require("../db/models/index");
let op = db.Sequelize.Op;

let miPerfilController = {
    perfil1: function (req, res) {
        let idMio = req.session.usuarioLogueado.id

        db.Post.findAll({
            where : [
                {id_usuario : idMio}]
        })

        .then(function(usuarioYo){
            res.render("miPerfil", {usuarioYo: usuarioYo})
        })
    }
}
    
    module.exports= miPerfilController