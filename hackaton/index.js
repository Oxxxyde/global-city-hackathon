var exp = require('express');
var sql = require('mysql'); 
var bParser = require('body-parser');

var app = exp();

var encParser = bParser.urlencoded({ extended: false });

var con = sql.createConnection({
    host: "localhost",
    user: "root",
    password: "Qwe290199",
    database: "gghack"
});
 
con.connect();

function sqlInset( req ) {
    var sql = "INSERT INTO `event`(`name_user`, `surname_user`, `id_event`, `pos_event`, `url_event`) VALUES ?";
    con.query(sql, [[req,]], function (error, results, fields) {
        if (error) throw error;
        //console.log("Number of records inserted: " + results.affectedRows);
    });
}

function sqlDelete( id ) {
    var sql = "DELETE FROM `event` WHERE id = " + id;
    con.query(sql, function (error, results, fields) {
        if (error) throw error;
        //console.log("Number of records inserted: " + results.affectedRows);
    });
}

app.set('view engine', 'ejs');


app.get('/', function(req, res){
    res.render('index')
});

app.get('/form', function(req, res){
    res.render('form')
});

app.post('/insert', encParser, function(req, res){
    sqlInset( [req.body.name_user, req.body.surname_user, req.body.id_event, req.body.pos_event, req.body.url_event] );
    res.render('index')
});

app.post('/delete', encParser, function(req, res){
    //console.log(req.body.id_del)
    sqlDelete(req.body.id_del);
    res.render('index')
});

app.get('/get/:page', function(req, res){
    var resu
    var perpage = 10;
    var start = (req.params.page - 1) * perpage;
    con.query('SELECT * FROM event ORDER BY ID DESC LIMIT ' + start + ', ' + perpage, function (error, results, fields) {
        if (error) throw error;
        resu = results
        con.query('SELECT COUNT(ID) AS total FROM event', function (error, results, fields) {
            if (error) throw error;
            res.render('get', {page: req.params.page, data: resu, count: results});
        });
    });
});

app.listen(5555);