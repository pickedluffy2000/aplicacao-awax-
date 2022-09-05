var express = require("express");
var users = require("./../inc/users");
var reservations = require("./../inc/reservations");
//var contact = require("../inc/contact");
var router = express.Router();

router.use(function(req, res, next){

    if (['/login'].indexOf(req.url) === -1 && !req.session.user){
        res.redirect("/admin/login");
    } else {
        next();
    }

});

router.get("/logout", function(req, res, next){

   delete req.session.user;

   res.redirect("/admin/login");

});

//rota de admin
router.get("/", function(req, res, next){

    reservations.getContact().then(data=>{

        res.render("admin/index", {
            data
        });
    });
});

router.post("/", function(req, res, next){
    
   reservations.save(req.fields, req.files).then(results=>{
    res.send(results);
   }).catch(err=>{
    res.send(err);
   });
});

router.delete("/:id", function(req, res, next){

    reservations.delete(req.params.id).then(results=>{

        res.send(results);

    }).catch(err=>{
        res.send(err);
    });

});



//fim da rota admin
router.post("/login", function(req, res, next){

    if(!req.body.email) {
        users.render(req, res, "Preencha o campo e-mail");
    } else if(!req.body.password){
        users.render(req, res, "Digite a senha");
    } else {
        users.login(req.body.email, req.body.password).then(user =>{

            req.session.user = user;

            res.redirect("/admin");

        }).catch(err=>{
            users.render(req, res, err.message || err);
        });
    }

});

router.get("/login", function(req, res, next){

    users.render(req, res, null);

});


module.exports = router;