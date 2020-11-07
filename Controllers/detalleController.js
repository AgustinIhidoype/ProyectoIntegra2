let db = require("../db/models/index");

let detalleController={
    
    post: function(req,res){
        let idPost = req.params.id;
        db.Post.findByPk(idPost, 
            {
                include: [
                    {association: 'Usuario'},
                    {association: 'Comentario'}
                ]
            })

        .then(function(detallePost){
            res.render ("detallePost", {detallePost: detallePost} )
        })
        
    },
    comentado: function(req,res){
        res.render('detallePost')
    },
    usuario: function(req,res){
        let idUsuario= req.params.id;
        db.Usuario.findByPk(idUsuario, {
            include: [
                {association: 'Post'}   
            ]
        })
        .then(function(elUsuario){

            res.render ("detalleUsuario", {elUsuario:elUsuario})
        })
       
    },
    editar: function(req,res){
        idDelPost = req.params.id

        db.Post.findByPk(idDelPost)

        .then(function(postEditando){
            res.render('editarPost', {postEditando: postEditando})
        })
    },
    actualizacion: function(req,res){

        let usuario = {
            texto: req.body.texto
        }

        db.Post.update(usuario, {
            where: {
                id: req.body.idDelPost
            }
            })

        .then(function(){
            res.redirect('/home')
        })
    }
    
    }
    
    module.exports= detalleController