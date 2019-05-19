var express = require('express');
var router = express.Router();

const ikeadashController = require('../../controllers/admin/ikea_dash');
const ikeacateController = require('../../controllers/admin/ikea_category');
const ikeamemController = require('../../controllers/admin/ikea_member');

router.get('/', ikeamemController.getMemberInfo);
//router.get('/edit', ikeacateController.getCategoryInfo);
//router.get('/delete', ikeacateController.getDeleteCategory);
//router.post('/update', ikeacateController.getUpdateCategory);



module.exports = router;