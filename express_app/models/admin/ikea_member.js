const db = require('../../util/admin_ikea');

module.exports = class member {
  constructor(id, name, sex, address, email) {
    this.id = id;
    this.name = name;
    this.sex = sex;
    this.address = address;
    this.email = email;
  }

  // CREATE 
  static add(req, res) {
    //console.log('add():', req.body.name, req.body.price);
    return db.execute(
      'INSERT INTO member (title, category, date, article) VALUES (?, ?, ?, ?)',
      [req.body.title, req.body.category, req.body.date, req.body.editor1]
    );
  }

  // READ
  static fetchAll() {
    return db.execute('SELECT * FROM member');
  }

  static findById(id) {
    return db.execute('SELECT * FROM post where id = ?', [id]);
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
      'UPDATE post SET title = ?, category = ?, date = ?, article = ? WHERE id = ?', [title, category, date, article, id]
    );
  }


  // DELETE
  static deleteById(id) {
    return db.execute(
      'DELETE FROM post WHERE id = ?', [id]
    );
  }


  static getCount() {
    return db.execute('SELECT COUNT(*) as count FROM member');
  }
};