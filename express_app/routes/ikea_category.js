var express = require('express');
var router = express.Router();

const ikeadashController = require('../controllers/ikea_dash');
const ikeaprodController = require('../controllers/ikea_product');
const ikeacateController = require('../controllers/ikea_category');

router.get('/', ikeacateController.getCategoryInfo);

module.exports = router;