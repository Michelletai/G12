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
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》MELLISSA3  MDF板單人床架', '6700', '105', '189', '85', 'NITORI', '5', 'https://www.nitori-net.tw/Goods/ItemDetail_2012970_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》N BAHAMA 雙人床座 (橡膠木,鋼)', '5990', '156', '196', '90', 'NITORI', '5', 'https://www.nitori-net.tw/Goods/ItemDetail_2208570_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('《NITORI》RANDAM 120LC 拼色矮整理衣櫃', '6990', '120', '43', '76', 'NITORI', '1', 'https://www.nitori-net.tw/Goods/ItemDetail_0540978_01.htm');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】FJÄLLBO 咖啡桌', '2495', '90', '46', '46', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/30340381/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】FJÄLLBO 電視櫃', '4995', '150', '36', '54', 'ikea', '1', 'https://www.ikea.com/tw/zh/catalog/products/30339293/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】BRIMNES 玻璃門櫃', '5990', '85', '35 ', '190', 'ikea', '1', 'https://www.ikea.com/tw/zh/catalog/products/30409889/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】NORRARYD 吧台椅附靠背', '3490', '46', '47', '103', 'ikea', '2', 'https://www.ikea.com/tw/zh/catalog/products/70408449/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】MARTIN 餐椅', '890', '49', '52', '86', 'ikea', '2', 'https://www.ikea.com/tw/zh/catalog/products/S89219528/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】EKENÄSET 雙人座沙發', '7990', '118.5', '78', '75', 'ikea', '4', 'https://www.ikea.com/tw/zh/catalog/products/10331373/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】KLIPPAN 雙人座沙發', '5990', '180', '88', '66', 'ikea', '4', 'https://www.ikea.com/tw/zh/catalog/products/S89251778/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】GALANT 附門收納櫃', '6990', '80', '45', '120', 'ikea', '1', 'https://www.ikea.com/tw/zh/catalog/products/30365140/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】SVÄRTA 上下舖床框', '7990', '208', '97', '159', 'ikea', '5', 'https://www.ikea.com/tw/zh/catalog/products/90247974/');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL 質感亞麻灰扶手布單椅 / 餐椅', '5400', '58', '64', '83', '滿屋生活 Full Living', '2', 'https://www.full-living.com.tw/main/living-room/chairs/5548a-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL 現代山毛櫸木灰色布餐椅 ', '6800', '49', '57', '78', '滿屋生活 Full Living', '2', 'https://www.full-living.com.tw/main/living-room/chairs/5575s-1458-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('ICHIBA 日系工業復古皮革單椅', '5800', '45', '50', '70.5', 'ICHIBA', '2', 'https://www.full-living.com.tw/main/living-room/chairs/anc-2552br-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('ICHIBA 日系皮革升降辦公椅', '7500', '68.5', '73', '82.5', 'ICHIBA', '2', 'https://www.full-living.com.tw/main/living-room/chairs/ch-2800dbr-be-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('Zero Chair 零重力休閒椅', '2980', '55', '81.5', '96', '安得士 ATEX', '2', 'https://www.full-living.com.tw/main/living-room/chairs/hit200br-gr-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('法國復古學生單椅', '4980', '41', '54', '88', '銅公園 BRASS PARK', '2', 'https://www.full-living.com.tw/main/living-room/chairs/ch0002-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL Explorer 探索家 - 米白皮扣實木高背床架', '14000', '163', '211', '120', '滿屋生活 Full Living', '5', 'https://full-living.com.tw/main/fullliving-bed/fl-explorer-%E6%8E%A2%E7%B4%A2%E5%AE%B6-%E7%B1%B3%E7%99%BD%E7%9A%AE%E6%89%A3%E5%AF%A6%E6%9C%A8%E9%AB%98%E8%83%8C%E5%BA%8A%E6%9E%B6-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL Hols 荷斯 - 灰織紋布邊實木高背床架', '15500', '164', '207', '108', '滿屋生活 Full Living', '5', 'https://full-living.com.tw/main/fullliving-bed/fl-hols-%E8%8D%B7%E6%96%AF-%E7%81%B0%E7%B9%94%E7%B4%8B%E5%B8%83%E9%82%8A%E5%AF%A6%E6%9C%A8%E9%AB%98%E8%83%8C%E5%BA%8A%E6%9E%B6-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL Lavender blue 混織慵藍-鉚釘實木高背床架', '14500', '163', '204', '126', '滿屋生活 Full Living', '5', 'https://full-living.com.tw/main/fullliving-bed/p15bd02bl0203-589-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL Morpheus 穆斯-美式暖棕實木床架', '7000', '160', '201', '18', '滿屋生活 Full Living', '5', 'https://full-living.com.tw/main/fullliving-bed/fl-morpheus-%E7%A9%86%E6%96%AF-%E7%BE%8E%E5%BC%8F%E6%9A%96%E6%A3%95%E5%AF%A6%E6%9C%A8%E5%BA%8A%E6%9E%B6-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL 吉維斯- 美式鄉村風實木餐桌', '8200', '140', '85', '76', '滿屋生活 Full Living', '3', 'https://full-living.com.tw/main/fullliving-diningtable/s092-dt01-1195-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL 北歐簡約圓角實木餐桌', '8200', '90', '153', '76', '滿屋生活 Full Living', '3', 'https://full-living.com.tw/main/fullliving-diningtable/5575-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('FL 四角斜邊橡木餐桌', '9300', '183', '102', '75', '滿屋生活 Full Living', '3', 'https://full-living.com.tw/main/fullliving-diningtable/ts201407001-111-271-275-detail.html');
INSERT INTO `ikea`.`product` (`name`, `price`, `width`, `depth`, `height`, `vendor`, `category_id`, `source`) VALUES ('【ikea】NORDBY 餐桌', '4490', '125', '75', '75', 'ikea', '3', 'https://www.ikea.com/tw/zh/catalog/products/60237783/');



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


