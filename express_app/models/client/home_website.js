const db = require('../../util/client_home');

module.exports = class website {
  // READ
  static fetchAll() {
    return db.execute('SELECT url.id,url.name,url.url,`desc`.desc FROM home.websiteurl url left join home.websitedesc `desc` on url.name = `desc`.name ');
  }
};