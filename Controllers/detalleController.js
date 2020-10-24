let db = require("../db/models/index");

let detalleController={
    
    post: function(req,res){
    
        res.render ("detallePost", )
    },
    usuario: function(req,res){
        let idUsuario= req.params.id;
        db.Usuario.findByPk(idUsuario)
        .then(function(elUsuario){

            res.render ("detalleUsuario", {elUsuario:elUsuario})
        })
       
    }
    
    }
    
    module.exports= detalleController