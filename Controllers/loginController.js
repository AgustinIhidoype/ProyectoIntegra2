const db = require("../db/models")
let bcrypt = require('bcryptjs');
let loginController = {
    login: function (req, res) {
        if (req.session.usuarioLogueado != undefined) {
            res.redirect('/home')
        }
        res.render("login", )
    },
    logueado: function(req,res){
        if (req.session.usuarioLogueado != undefined) {
            res.redirect("/home");
        }
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

                console.log(req.body)
                console.log(user)                
            }
            else {
                req.session.usuarioLogueado = user; 
               
                if(req.body.remember != undefined) {
                    res.cookie('idDelUsuarioLogueado', user.id, {maxAge : 1000  * 31536000})
                }
               
            }
            res.redirect("/home")
            
        })
    },
    desloguear: function(req, res){
        req.session.usuarioLogueado = undefined;
        res.clearCookie('idDelUsuarioLogueado');
        
        return res.redirect('/home')
    }
    
}
    
    module.exports= loginController