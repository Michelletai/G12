# tku_12_家具查詢網
使用nodejs express

此專案有兩個database
-blogen
-ikea
blogen為範例資料庫，裡面存放範例程式使用的資料
ikea為主要資料庫，其資料都是靠它運作

檔案在sql/self_contained.sql中，將其匯入即可使用

**請注意**
在pull專案下來執行前必須注意的幾個地方:
1. /bin/www 中 port 的號碼
2. /util/database.js /util/ikea.js 中DB的連線資訊
