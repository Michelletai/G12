const moment = require('moment');

const website = require('../../models/client/home_websiteinfo');

exports.getHome = async (req, res, next) => {
  let websiteInfo;

  try {
    const getWebsiteInfo = await website.fetchAll()
    .then(([rows]) => {
      websiteInfo = rows;
    })
    res.render('client/home', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      websiteInfo: websiteInfo
    });
  } catch (err) {
    console.log(err);
  };

};