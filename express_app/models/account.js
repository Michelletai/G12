const db = require('../util/database');

module.exports = class Account {
    constructor(id, userid, password, email, phone, deptid, deptname) {
        this.id = id;
        this.userid = userid;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.deptid = deptid;
        this.deptname = deptname;
    }

    // CREATE 
    static add(req, res) {
        //console.log('add():', req.body.name, req.body.price);
        return db.execute(
            'INSERT INTO account (title, category, date, article) VALUES (?, ?, ?, ?)', [req.body.title, req.body.category, req.body.date, req.body.editor1]
        );
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT A.id, userid, password,email, phone, deptid, deptname from db_404411687.account as a left join dept as D on deptid = D.id');
    }

    static findById(id) {
        return db.execute('SELECT * FROM account where id = ?', [id]);
    }

    // UPDATE
    static updateById(req, res) {
        const id = req.body.id;
        const title = req.body.title;
        const category = req.body.category;
        const date = req.body.date;
        //const date = new Date();
        const article = req.body.editor1;
        console.log('model:updateById()', id, title, category, date, article)
        return db.execute(
            'UPDATE account SET title = ?, category = ?, date = ?, article = ? WHERE id = ?', [title, category, date, article, id]
        );
    }


    // DELETE
    static deleteById(id) {
        return db.execute(
            'DELETE FROM account WHERE id = ?', [id]
        );
    }


    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM account');
    }
};