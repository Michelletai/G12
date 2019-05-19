const moment = require('moment');

/*
const Member = require('../../models/admin/ikea_member');
const Product = require('../../models/admin/ikea_product');
const Category = require('../../models/admin/ikea_category');
const User = require('../../models/sample/user');
*/

exports.getHome = async (req, res, next) => {
  try {
    res.render('client/home', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog'
    });
  } catch (err) {
    console.log(err);
  };

};