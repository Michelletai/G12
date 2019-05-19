const moment = require('moment');

const website = require('../../models/client/home_website');
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
      webSite: webSite,
      webSiteUrl: webSiteUrl,
      webSiteDesc: webSiteDesc
    });
  } catch (err) {
    console.log(err);
  };

};