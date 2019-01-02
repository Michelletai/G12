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
asdfgfewfs

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



哈哈哈我先了