const moment = require('moment');

const Member = require('../../models/admin/ikea_member');
const Product = require('../../models/admin/ikea_product');
const Category = require('../../models/admin/ikea_category');
const User = require('../../models/sample/user');

/* READ *****************************/

exports.getDashboard = async (req, res, next) => {
  let categories;
  let product;
  let productCounts;
  let categoryCount;
  let userCount;

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
  
  res.render('admin/ikea_dash_category', {
    title: '類別',
    product: product,
    categories: categories,
    categoryCount: categoryCount,
    productCount: productCount,
    userCount: userCount
  });
};

exports.getCategoryInfo = async (req, res, next) => {

  let categories;
  let categoryCount;

  const getCategories = await Category.findById(req.query.id)
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
  
  res.render('admin/ikea_category_details', {
    title: '類別',
    categories: categories,
    categoryCount: categoryCount
  });  
}

/* WRITE *****************************/

exports.getUpdateCategory = async (req, res, next) => {
  const updateProductById = await Category.updateById(req, res)
      .then(([rows]) => {
          res.redirect('/category');
      })
      .catch(err => console.log(err));
};

exports.getAddCategory = async (req, res, next) => {
  const addProductById = await Category.add(req, res)
      .then(([rows]) => {
          res.redirect('/category');
      })
      .catch(err => console.log(err));
};

/* DELETE *****************************/

exports.getDeleteCategory = async (req, res, next) => {
  const addProductById = await Category.deleteById(req, res)
      .then(([rows]) => {
          res.redirect('/category');
      })
      .catch(err => console.log(err));
};

