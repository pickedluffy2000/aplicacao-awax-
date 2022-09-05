var conn = require("./db");

module.exports = {

    render(req, res, error){

        res.render("admin/login", {
            body: req.body,
            error
        });

    },

    login(email, password){

        return new Promise((resolve, reject)=>{

            conn.query(`
            SELECT * FROM tb_users WHERE email = ?
            `,[
                email
            ], (err, results)=>{

                if(err){
                    reject(err);
                } else {

                    //validando se o campo esta preenchido
                    if(!results.length > 0){
                        reject("Usuario ou senha incorretos");
                    } else {
                        let row = results[0];
                        //validando se a sneha e diferente
                        if(row.password !== password){
                            reject("Usuario ou senha incorretos");
                        } else {
                            resolve(row);
                        }
                    }

                }
            });

        });

    }

}