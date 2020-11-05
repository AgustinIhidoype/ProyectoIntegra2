let db = require("../db/models/index");

let miPerfilController = {
    perfil1: function (req, res) {
        let idMio = req.session.usuarioLogueado.id;

        db.Usuario.findByPk(idMio, 
            {
                include: [
                    {association: "Post"}
                ]
        })

        .then(function(usuarioYo){
            res.render("miPerfil", {usuarioYo: usuarioYo})
        })
    }
}
    
    module.exports = miPerfilController