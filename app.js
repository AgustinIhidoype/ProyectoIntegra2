var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();
//requiere session
var session = require ("express-session");


let db = require('./db/models/index')


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//const db = require("/db/models")

app.use('/', indexRouter);
app.use('/users', usersRouter);

//session
app.use(session ({secret:"integra2"}));

app.use(function(req, res, next){

  res.locals = {
    usuarioLogueado: req.session.usuarioLogueado
  }
  next();
})

app.use(function(req,res,next){
  if (req.cookies.idDelUsuarioLogueado != undefined && req.session.usuarioLogueado == undefined) {
    db.Usuario.findByPk(req.cookies.idDelUsuarioLogueado)
    .then(function(usuario){
      req.session.usuarioLogueado = usuario;
      res.locals.usuarioLogueado = usuario
      //res.redirect(req.originalUrl)
      return next()
    })
  } else {
    return next();
  }  
})



// RUTAS CREADAS X NOSOTROS
let rutaHome = require ("./routes/home");
app.use ("/home" , rutaHome);

let rutaAgregarPost = require ("./routes/agregarPost")
app.use ("/agregarpost", rutaAgregarPost)

let rutaDetalle = require ("./routes/detalle")
app.use ("/detalle", rutaDetalle)

let rutaLogin = require ("./routes/login")
app.use ("/login", rutaLogin)

let rutaMiPerfil = require ("./routes/miPerfil")
app.use ("/miPerfil", rutaMiPerfil)

let rutaRegistracion = require ("./routes/registracion")
app.use ("/registracion", rutaRegistracion)

//TERMINA RUTAS CREADAS X NOSOTROS

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
