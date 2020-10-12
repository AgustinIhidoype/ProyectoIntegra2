let db = require("../db/models/index")

let homeController = {
index: function (req, res) {
    res.render("home", )
},
prueba: function(req, res) {
    db.Usuario.findAll()
    .then(function(posts){
        res.render('posts', {posts: posts})
    })
}
}

module.exports = homeController