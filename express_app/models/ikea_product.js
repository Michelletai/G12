const db = require('../util/ikea');

module.exports = class member {
  constructor(id, name, price, width, depth, height, vendor, category_id, source) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.width = width;
    this.depth = depth;
    this.height = height;
    this.vendor = vendor;
    this.category_id = category_id;
    this.source = source;
  }

  // READ
  static fetchAll() {
    return db.execute('SELECT * FROM product');
  }

  static findById(id) {
    return db.execute('SELECT * FROM product where id = ?', [id]);
  }

  // DELETE
  static deleteById(id) {
    return db.execute(
      'DELETE FROM product WHERE id = ?', [id]
    );
  }


  static getCount() {
    return db.execute('SELECT COUNT(*) as count FROM product');
  }
};