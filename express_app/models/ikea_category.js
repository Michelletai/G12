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

    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM category');
    }
}