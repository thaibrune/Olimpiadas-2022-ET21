var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var jwt = require("jsonwebtoken");
const db = require("./models");
var config = require("./config/config");

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/login');
var personajesRouter = require('./routes/personajes');
var personajesSinAuthRouter = require('./routes/personajesSinAuth');

var app = express();

app.use(cors());



app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/login', loginRouter);
app.use('/personajes', personajesSinAuthRouter);

app.use((req, res, next) => {
    let token = req.headers['authorization'];
    token = token? token.split("Bearer "):null;
    if (token && token[1]) {
        jwt.verify(token[1], config.key, (err, decoded) => {
            if (err) {
                return res.status(401).json({ mensaje: 'Token inválida' });
            } else {
                req.decoded = decoded;
                next();
            }
        });
    } else {
        res.sendStatus(403);
    }
});




app.use('/users', usersRouter);
app.use('/personajes', personajesRouter);

module.exports = app;
