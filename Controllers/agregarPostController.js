let db = require("../db/models/index")

let agregarPostController={
    
    agregarPost: function(req,res){

        res.render ("agregarPost", )
    },
    posteado: function(req,res){
        let post = {
            id_usuario: req.body,
            url_imagen: req.body.foto,
            texto: req.body.texto
        }

        db.Post.create(post)
        .then(function(){
            res.redirect('/home')
        })
    }
}

module.exports= agregarPostController