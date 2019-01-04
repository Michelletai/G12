/*member*/
INSERT INTO `ikea`.`member` (`name`, `sex`, `address`, `email`) VALUES ('tommy', '男', '新北市淡水區北新路184巷23號6樓', 'cy94295@gmail.com');
INSERT INTO `ikea`.`member` (`name`, `sex`, `address`, `email`) VALUES ('harry', '男', '新北市淡水區北新路184巷22號6樓', 'HarryLuo227@gmail.com');
INSERT INTO `ikea`.`member` (`name`, `sex`, `address`, `email`) VALUES ('michelletai', '女', '新北市淡水區北新路184巷21號6樓', 'Michelletai@gmail.com');


/*product*/
INSERT INTO `ikea`.`product` (`id`, `name`, `price`, `width`, `depth`, `height`, `vendor`, `source`) 
VALUES ('1', '《C&B》設計家座充日式床頭邊桌櫃', '1999', '38', '56', '40.5', 'C&B', 'https://24h.pchome.com.tw/prod/DEABKQ-A900808W6?fq=/S/DEAB78');
UPDATE `ikea`.`product` SET `category_id` = '1' WHERE (`id` = '1');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikloo】日系上木板三層抽屜收納櫃', '669', '30', '75', '45', 'ikloo', '1', 'https://24h.pchome.com.tw/prod/DEABIK-A9007YXBB?fq=/S/DEAB78');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《HOPMA》五抽斗櫃-胡桃色', '1580', '40.3', '95', '80', 'HOPMA', '1', 'https://24h.pchome.com.tw/prod/DEABHV-A9005WBAG?fq=/S/DEAB78');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('棉花田【萊歐】多段式獨立彈簧折疊和室椅', '2099', '17', '120', '30', '萊歐', '2', 'https://24h.pchome.com.tw/prod/DEAB7F-A9007NRFH?fq=/S/DEAB7F');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】LANDSKRONA-雙人座沙發', '22900', '164', '89', '78', 'ikea', '4', 'https://www.ikea.com/tw/zh/catalog/products/S99031743/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】MALM-掀床', '13400', '166', '209', '38', 'ikea', '4', 'https://www.ikea.com/tw/zh/catalog/products/10404802/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】MELLTORP-餐桌', '1590', '125', '75', '74', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/S39280033/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】INGO-桌子', '2190', '120', '75', '73', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/60161797/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】FOLLAFOSS-雙人床框', '8490', '218', '161', '90', 'ikea', '5', 'https://www.ikea.com/tw/zh/catalog/products/S19281934/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】TARVA-雙人床框', '4990', '209', '160', '92', 'ikea', '5', 'https://www.ikea.com/tw/zh/catalog/products/S09198515/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】BÖRJE-餐椅', '1490', '44', '55', '100', 'ikea', '2', 'https://www.ikea.com/tw/zh/catalog/products/40410793/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('MALM 書桌', '4990', '140', '65', '73', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/20361147/#/00359824');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FROSTA 椅凳', '299', '42', '42', '45', 'ikea', '2', 'https://www.ikea.com/tw/zh/catalog/products/60162301/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('ODGER 餐椅', '2490', '45', '51', '43', 'ikea', '2', 'https://www.ikea.com/tw/zh/catalog/products/40359997/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('HEMNES 抽屜櫃/2抽', '3199', '54', '38', '66', 'ikea', '1', 'https://www.ikea.com/tw/zh/catalog/products/70355686/#/70355686');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('TARVA 床邊桌', '1995', '48', '39', '62', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/10219611/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('MEADE米德簡約風舒適懶骨頭腳凳', '999', '47', '66', '38', '東稻家居', '4', 'https://www.hdlife.com.tw/ItemInfo/18450');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('CHIKA千夏和風超微粒舒適懶人沙發(圓形)', '4999', '72', '72', '64', '東稻家居', '4', 'https://www.hdlife.com.tw/ItemInfo/6131');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('LEVI李維工業風個性鐵架書架型書桌', '2499', '100', '50', '92', '東稻家居', '3', 'https://www.hdlife.com.tw/ItemInfo/12587');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('經典回憶小鴨書桌', '4088', '90', '60', '165', '時尚屋', '3', 'https://mall.pchome.com.tw/prod/QFAA9N-A9008GDV0?fq=/S/QFAB6N');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('白板書架收納書桌', '3688', '90', '88', '165', '生活市集', '3', 'https://www.buy123.com.tw/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('無印生活床頭櫃', '2899', '45', '35', '60', '東稻家居', '1', 'https://www.hdlife.com.tw/ItemInfo/19341');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('坦菲膚色皮餐椅', '1499', '44', '49', '89.5', '東稻家居', '2', 'https://www.hdlife.com.tw/ItemInfo/21999');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('原木色實木四層架', '2299', '78', '41', '115', '東稻家居', '1', 'https://www.hdlife.com.tw/ItemInfo/20443');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('高背網布辦公椅黑', '3299', '61', '61', '130', '東稻家居', '2', 'https://www.hdlife.com.tw/ItemInfo/21465');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('COCOA可可連結式彈簧懶人床', '4299', '97', '195', '35', '東稻家居', '5', 'https://www.hdlife.com.tw/ItemInfo/17700');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》Hil2 布質單人沙發', '6700', '72', '88', '91', 'NITORI', '4', 'https://www.nitori-net.tw/Goods/ItemDetail_1130343_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》BESZE 實木餐桌', '3740', '135', '80', '74', 'NITORI', '3', 'https://www.nitori-net.tw/Goods/ItemDetail_4002096_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》DYNASTY 大理石質感餐桌', '12740', '135', '60', '77', 'NITORI', '3', 'https://www.nitori-net.tw/Goods/ItemDetail_4011700_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》ALNUS LBR/LGY 榿木餐椅', '2490', '45', '50.5', '74.5', 'NITORI', '2', 'https://www.nitori-net.tw/Goods/ItemDetail_4019850_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》ALAND 長凳', '3380', '107', '38', '45', 'NITORI', '2', 'https://www.nitori-net.tw/Goods/ItemDetail_4010123_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》GRAND 布質3人沙發', '11000', '186', '97', '87', 'NITORI', '4', 'https://www.nitori-net.tw/Goods/ItemDetail_1101255_01.htm');




/*wish_list*/
INSERT INTO `ikea`.`wish_list` (`mid`, `pid`) VALUES ('3', '2');

/*category*/
INSERT INTO `ikea`.`category` (`id`, `name`) 
VALUES ('1', '斗櫃'),
 ('2','和室椅');
INSERT INTO `ikea`.`category` (`name`) VALUES ('餐桌');

UPDATE `ikea`.`category` SET `name` = '椅子' WHERE (`id` = '2');
INSERT INTO `ikea`.`category` (`name`) VALUES ('沙發');
UPDATE `ikea`.`category` SET `name` = '櫃子' WHERE (`id` = '1');
INSERT INTO `ikea`.`category` (`name`) VALUES ('床');

/*category*/
INSERT INTO `ikea`.`category` (`id`, `name`) 
VALUES ('1', '斗櫃'),
 ('2','和室椅');


