const db = require("../db/models")
let bcrypt = require('bcryptjs');
let loginController = {
    login: function (req, res) {
        res.render("login", )
    },
    logueado: function(req,res){
       
        db.Usuario.findOne({
            where: [
                {email: req.body.email}
            ]
        }  )
        .then (function(user){
            if (user == null){
                res.send ("Usuario invalido")
        
            }
            else if (bcrypt.compareSync(req.body.password, user.constrasenia) == false){
                res.send ("Contraseña incorrecta")
            }
            else {
                req.session.usuarioLogueado = user;
                res.redirect("/home")
            }
        })
    }
    
}
    
    module.exports= loginController