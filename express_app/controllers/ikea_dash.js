const moment = require('moment');

const Member = require('../models/ikea_member');
const Product = require('../models/ikea_product');
const Category = require('../models/ikea_category');
const User = require('../models/user');

exports.getDashboard = async (req, res, next) => {

  let product;
  let productCounts;
  let categories;
  let categoryCount;
  let userCount;

  try {
    /*
    const getPosts = await Member.fetchAll()
      .then(([rows]) => {
        for (let p of rows) {
          p.date = moment(p.date).format('MMM D, YYYY');
        }
        posts = rows;
      })
    const getPostCount = await Member.getCount()
      .then(([rows]) => {
        postCount = rows[0].count;
      })
    */
    const getMember = await Product.fetchAllInfo()
      .then(([rows]) => {
        product = rows;
      })
    const getPostCount = await Product.getCount()
      .then(([rows]) => {
        productCount = rows[0].count;
      })
    
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

    const getUserCount = await User.getCount()
      .then(([rows]) => {
        userCount = rows[0].count;
        console.log('user count 1: ', userCount);
      })

    let data = {
      product: product,
      categories: categories,
      productCount: productCount,
      categoryCount: categoryCount,
      userCount: userCount
    }

    console.log(JSON.stringify(data));
    //res.send(JSON.stringify(data));

    res.render('ikea_dash', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      product: product,
      categories: categories,
      categoryCount: categoryCount,
      productCount: productCount,
      userCount: userCount
    });

  } catch (err) {
    console.log(err);
  };

};