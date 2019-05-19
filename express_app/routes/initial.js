var express = require('express');
var router = express.Router();

const initialController = require('../controllers/initial');

router.get('/', initialController.getInit);


module.exports = router;