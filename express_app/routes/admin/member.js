var express = require('express');
var router = express.Router();

const MemberModifyMethod = require('../../controllers/admin/modify_controller');

memberModifyMethod = new MemberModifyMethod();

router.post('/register', memberModifyMethod.postRegister);

router.post('/login', memberModifyMethod.postLogin);

module.exports = router;
