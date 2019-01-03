var express = require('express');
var router = express.Router();

const ikeadashController = require('../controllers/ikea_dash');
const ikeacateController = require('../controllers/ikea_category');

router.get('/', ikeacateController.getDashboard);


module.exports = router;