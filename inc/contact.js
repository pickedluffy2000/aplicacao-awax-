var conn = require('./db');
module.exports = {

    render(req, res, error, success){

        res.render('contact', {
            title: 'contact - Awax',
            body: req.body,
            error,
            success
          });

    },

    save(fields){

        return new Promise((resolve, reject)=>{

            conn.query(`
            INSERT INTO tb_contactus (name, email, message)
            VALUES(?, ?, ?)
            `, [
              fields.name,
              fields.email,
              fields.message
            ], (err, results)=>{
      
                if(err){
                    reject(err);
                } else {
                    resolve(results);
                }

            });

        });

    }

}