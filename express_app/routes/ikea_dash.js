var express = require('express');
var router = express.Router();

const ikeadashController = require('../controllers/ikea_dash');
const ikeaprodController = require('../controllers/ikea_product');

router.get('/', ikeadashController.getDashboard);
router.get('/edit', ikeaprodController.getEditProduct);
router.post('/update', ikeaprodController.getUpdateProduct);
router.post('/add', ikeaprodController.getAddProduct);
router.get('/delete', ikeaprodController.getDeleteProduct);

module.exports = router;