let db = require("../db/models/index")
let bcrypt = require('bcryptjs');

let registracionController = {
    registracion: function(req,res){
        if (req.session.usuarioLogueado != undefined) {
            res.redirect('/home')
        }
        res.render('registracion')
    },
    registrado: function(req,res){
        let usuario = {
            nombre_usuario: req.body.username,
            email: req.body.email,
            constrasenia: bcrypt.hashSync(req.body.password, 10),
            fecha_nacimiento: req.body.nacimiento,
            preguntaElegida: req.body.preguntaElegida,
            preguntaRespuesta: req.body.preguntaRespuesta
        }
        db.Usuario.create(usuario)
        .then(function(){
            res.redirect('/home')
        })
    }
};

module.exports = registracionController