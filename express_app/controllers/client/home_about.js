const moment = require('moment');

const website = require('../../models/client/home');
const websiteurl = require('../../models/client/home_websiteurl');
const websitedesc = require('../../models/client/home_websitedesc');

exports.getHome = async (req, res, next) => {
  let webSite;
  let webSiteUrl;
  let webSiteDesc;
  try {
    const getWebsite = await website.fetchAll()
    .then(([rows]) => {
      webSite = rows;
    });
    res.render('client/home_about', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      webSite: webSite,
      webSiteUrl: webSiteUrl,
      webSiteDesc: webSiteDesc
    });
  } catch (err) {
    console.log(err);
  };

};