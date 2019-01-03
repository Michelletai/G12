const db = require('../util/ikea');

module.exports = class Member {
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
  static fetchAllInfo() {
    return db.execute('SELECT pro.id,pro.name,price,width,depth,height,vendor,category_id,source,cat.id as cid,cat.name as cname FROM ikea.product pro left join ikea.category cat on pro.category_id = cat.id;');
  }

  static fetchAll() {
    return db.execute('SELECT * FROM product');
  }

  static findById(id) {
    return db.execute('SELECT * FROM product where id = ?', [id]);
  }

  static getCount() {
    return db.execute('SELECT COUNT(*) as count FROM product');
  }
  
  // UPDATE
  static updateById(req, res) {
    console.log('update:'+'id'+req.body.id);
    const id = req.body.id;
    const name = req.body.name;
    const price = req.body.price;
    const width = req.body.width;
    const depth = req.body.depth;
    const height = req.body.height;
    const vendor = req.body.vendor;
    const category_id = req.body.category_id;
    //const date = new Date();
    const source = req.body.source;
    console.log('model:updateById()', id, name, price, width, depth, height, vendor, category_id, source);
    return db.execute(
      'UPDATE product SET name = ?, price = ?, width = ?, depth = ?, height = ?, vendor = ?, category_id = ?, source = ? WHERE id= ?', [name, price, width, depth, height, vendor, category_id, source,id]
    );
  }

  // ADD
  static add(req, res){
    console.log('add:'+'name'+req.body.name);
    console.log(req.body);
    const name = req.body.name;
    const price = req.body.price;
    const width = req.body.width;
    const depth = req.body.depth;
    const height = req.body.height;
    const vendor = req.body.vendor;
    const category_id = req.body.category_id;
    //const date = new Date();
    const source = req.body.source;
    console.log('model:add()', name, price, width, depth, height, vendor, category_id, source);
    return db.execute(
      'INSERT INTO ikea.product ( name, price, width, depth, height, vendor, category_id, source) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)', [name, price, width, depth, height, vendor, category_id, source]
    );
  }

  // DELETE
  static deleteById(req, res) {
    const id = req.query.id;
    return db.execute(
      'DELETE FROM product WHERE id = ?', [id]
    );
  }


  static getCount() {
    return db.execute('SELECT COUNT(*) as count FROM product');
  }
};