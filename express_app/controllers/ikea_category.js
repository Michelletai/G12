const moment = require('moment');

const Category = require('../models/ikea_category');


/* WRITE *****************************/

exports.getAddCategory = async (req, res, next) => {
  const addProductById = await Category.add(req, res)
      .then(([rows]) => {
          res.redirect('/');
      })
      .catch(err => console.log(err));
};