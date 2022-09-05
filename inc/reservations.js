let conn = require("./db");


module.exports = {

    getContact(){

        return new Promise((resolve, reject)=>{

            conn.query(`
                SELECT * FROM tb_contactus ORDER BY name
            `, (err, results)=>{

                if(err){
                    reject(err);
                }

                resolve(results);
                
            });

        });

    },

  
    save(fields){

        return new Promise((resolve, reject)=>{

            let query, params;
            if(parseInt(fields.id) > 0){

                query = `
                 UPDATE tb_contactus
                 SET name = ?,
                 email = ?,
                 message = ?
                 WHERE id = ?
                `;

                params = [
                    fields.name,
                    fields.email,
                    fields.message,
                    fields.id
                ];
            } else {

                query = `
                INSERT INTO tb_contactus (name, email, message)
                VALUES(?, ?, ?)
                `;

                params = [
                    fields.name,
                    fields.email,
                    fields.message,
                ]
            }

            conn.query(query, params, (err, results)=>{
      
                if(err){
                    reject(err);
                } else {
                    resolve(results);
                }

            });

        });

    },

    delete(id){

        return new Promise((resolve, reject)=>{

            conn.query(`
            DELETE FROM tb_contactus WHERE id = ?
            `, [
                id
            ], (err, results)=>{

                if(err) {
                    reject(err);
                } else {
                    resolve(results);
                }

            });

        });
    }
    

}