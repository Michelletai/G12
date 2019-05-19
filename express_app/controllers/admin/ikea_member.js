const moment = require('moment');

const Member = require('../../models/admin/ikea_member');
const Product = require('../../models/admin/ikea_product');
const Category = require('../../models/admin/ikea_category');
const User = require('../../models/sample/user');

/* READ *****************************/

exports.getMemberInfo = async (req, res, next) => {
  let member;
  let categories;
  let product;
  let productCounts;
  let categoryCount;
  let userCount;

  const getMember = await Member.fetchAll()
    .then(([rows]) => {
      member = rows;
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
    member: member,
    categories: categories,
    productCount: productCount,
    categoryCount: categoryCount,
    userCount: userCount
  }
  
  res.render('admin/ikea_dash_member', {
    title: '類別',
    member: member,
    categories: categories,
    categoryCount: categoryCount,
    productCount: productCount,
    userCount: userCount
  });
};

