const moment = require('moment');

const websiteurl = require('../../models/client/home_websiteurl');
const websitedesc = require('../../models/client/home_websitedesc');

exports.getHome = async (req, res, next) => {
  let webSiteUrl;
  let webSiteDesc;
  try {
    const getWebsiteUrl = await websiteurl.fetchAll()
    .then(([rows]) => {
      webSiteUrl = rows;
    });
    const getWebsiteDesc = await websitedesc.fetchAll()
    .then(([rows]) => {
      webSiteDesc = rows;
    });
    res.render('client/home', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      webSiteUrl: webSiteUrl//,
      //webSiteDesc: webSiteDesc
    });
  } catch (err) {
    console.log(err);
  };

};