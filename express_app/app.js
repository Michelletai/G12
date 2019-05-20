var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

const intialRouter = require('./routes/initial');

/************************Client*****************/
const homeRouter = require('./routes/client/home');
const homeWebListRouter = require('./routes/client/home_weblist');
/***********************Client*****************/

/***********************Admin*****************/
const ikeaRouter = require('./routes/admin/ikea_product');
const ikeaCategoryRouter = require('./routes/admin/ikea_category');
const ikeaMemberRouter = require('./routes/admin/ikea_member');
/***********************Admin*****************/

/***********************Sample*****************/
var dashBoardRouter = require('./routes/sample/dashboard');
var usersRouter = require('./routes/sample/users');
var postRouter = require('./routes/sample/post');
var accountRouter = require('./routes/sample/account');
/***********************Sample*****************/



var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', intialRouter);

/************************Client*****************/
app.use('/client', homeRouter);
app.use('/client/weblist', homeWebListRouter);

/***********************Client*****************/

 /***********************Admin*****************/
app.use('/admin', ikeaRouter);
app.use('/admin/category', ikeaCategoryRouter);
app.use('/admin/member', ikeaMemberRouter);
 /***********************Admin*****************/

 /***********************Sample*****************/
app.use('/dashboard', dashBoardRouter);
app.use('/post', postRouter);
app.use('/users', usersRouter);
app.use('/404411687', accountRouter);
 /***********************Sample*****************/




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
    res.render('sample/error');
});

module.exports = app;