const db = require('../util/ikea');

module.exports = class Category {
    constructor(id, name) {
        this.id = id;
        this.name = name;
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM category');
    }

    static findById(id) {
        return db.execute('SELECT * FROM category where id = ?', [id]);
      }

    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM category');
    }

    // ADD
    static add(req, res){
        console.log(req.body);
        const category_name = req.body.category_name;
        console.log('model:add()', category_name);
        return db.execute(
        'INSERT INTO ikea.category ( name ) VALUES ( ? )', [category_name]
        );
    }

    // DELETE
    static deleteById(req, res){
        console.log(req.query.id);
        const category_id = req.query.id;
        console.log('model:category_delete()', category_id);
        return db.execute(
        'DELETE FROM ikea.category where id = ?', [category_id]
        );
    }

}