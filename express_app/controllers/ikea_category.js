const moment = require('moment');

const Member = require('../models/ikea_member');
const Product = require('../models/ikea_product');
const Category = require('../models/ikea_category');
const User = require('../models/user');

exports.getDashboard = async (req, res, next) => {

  let categories;
  let categoryCount;

  try {
    const getCategories = await Category.fetchAll()
      .then(([rows]) => {
        for (let p of rows) {
          p.date = moment(p.date).format('MMM D, YYYY');
        }
        categories = rows;
      })

    const getCategoryCount = await Category.getCount()
      .then(([rows]) => {
        categoryCount = rows[0].count;
      })

    let data = {
      categories: categories,
      categoryCount: categoryCount
    }

    console.log(JSON.stringify(data));
    //res.send(JSON.stringify(data));

    res.render('ikea_dash', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      categories: categories,
      categoryCount: categoryCount
    });

  } catch (err) {
    console.log(err);
  };

};