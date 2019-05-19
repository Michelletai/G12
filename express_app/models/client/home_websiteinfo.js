const db = require('../../util/client_home');

module.exports = class website {
    // READ
  static fetchAll() {
    return db.execute('SELECT * FROM home.websiteurl;');
  }

};