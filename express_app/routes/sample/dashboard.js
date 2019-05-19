var express = require('express');
var router = express.Router();

const dashboardController = require('../../controllers/sample/dashboard');

router.get('/', dashboardController.getDashboard);

module.exports = router;