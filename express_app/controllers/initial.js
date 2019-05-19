const moment = require('moment');

exports.getInit = async (req, res, next) => {
  try {
    res.redirect('/client');
  } catch (err) {
    console.log(err);
  };
};