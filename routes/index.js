var conn = require('./../inc/db');
var express = require('express');
var contact = require('./../inc/contact');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {

  conn.query(`
  SELECT * FROM tb_menus ORDER BY title
  `, (err, results)=>{

    if(err){
      console.log(err);
    }

    res.render('index', {
      title: 'Awax',
      menus: results
    });
  });
});

router.get('/contact', function(req, res, next){
  contact.render(req, res);
});

router.post('/contact', function(req, res, next){

  if(!req.body.name){
    contact.render(req, res, "Digite o nome");
  } else if(!req.body.email){
    contact.render(req, res, "Digite o e-mail");
  } else if(!req.body.message){
    contact.render(req, res, "Digite uma mensagem");
  } else {
    contact.save(req.body).then(results=>{

      req.body = {};
      contact.render(req, res, null, "Reserva realizada com sucesso");
    }).catch(err=>{
      contact.render(req, res, err.message);
    });
  }

});



router.get('/about', function(req, res, next){
  res.render('about', {
    title: 'about - Awax'
  });
});

router.get('/services', function(req, res, next){
  res.render('services', {
    title: 'services - Awax'
  });
});

module.exports = router;
 